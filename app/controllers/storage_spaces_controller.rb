class StorageSpacesController < ApplicationController
  before_action :set_storage_space, only: [:show, :destroy, :edit, :update]
  before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]

  def index
    @storage_spaces = policy_scope(StorageSpace).order(created_at: :desc)
    @storage_spaces = StorageSpace.where.not(latitude: nil, longitude: nil)
    @markers = @storage_spaces.map do |storage_space|
      {
        lat: storage_space.latitude,
        lng: storage_space.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end

  end

  def show
    @booking = Booking.new
  end

  def new
    @storage_space = StorageSpace.new
    authorize @storage_space
  end

  def create
    @storage_space = StorageSpace.new(storage_space_params)
    @storage_space.user = current_user
    authorize @storage_space
    if @storage_space.save
      redirect_to storage_space_path(@storage_space), notice: 'Storage Space was successfully created.'
    else
      render :new, alert: 'someone fucked up!'
    end
  end

  def edit
  end

  def update
    if @storage_space.update(storage_space_params)
      redirect_to @storage_space, notice: 'Storage Space was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @storage_space.destroy
    respond_to do |format|
      format.html { redirect_to storage_spaces_url, notice: 'storage_space was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_storage_space
    @storage_space = StorageSpace.find(params[:id])
    authorize @storage_space
  end

  def storage_space_params
    params.require(:storage_space).permit(:description, :address_city, :address_zip_code, :address_country, :capacity, :photo, :title)
  end

end
