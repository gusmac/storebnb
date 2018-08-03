class BookingsController < ApplicationController

  before_action :set_booking, only: [:update, :destroy, :show, :edit]

  def index
    @bookings = policy_scope(Booking).order(name: :asc)
  end

  #GET / bookings/1
  def show
    #render
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  # GET / bookings/1/edit
  def edit
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    authorize @booking
    @storage_space = StorageSpace.find(params[:storage_space_id])
    @booking.storage_space = @storage_space
    if @booking.save
      redirect_to @booking, notice: "Booking was successfully created"
    else
      redirect_to @storage_space, alert: "Booking unsuccessful! Have you tried turning it off and on again?"
    end
  end

  def update
    if @booking.update(booking_params)
      redirect_to @booking, notice: "Booking was successfully updated"
    else
      render :edit
    end

  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
