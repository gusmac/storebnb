class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    authorize @review

    if @review.save
      @booking.review = @review
      @booking.save
      redirect_to storage_space_path(@booking.storage_space)
    else
      redirect_to storage_space_booking_path(@booking.storage_space_id, @booking.id), alert: 'You were only supposed to blow the bloody doors off!'
    end
  end

  def destroy
    @review = Review.find(params[:id])
    authorize @review
    @review.destroy
  end

  private

  def set_review
    @review = Review.find(params[:id])
    authorize @review
  end

  def review_params
    params.require(:review).permit(:description, :rating)
  end
end
