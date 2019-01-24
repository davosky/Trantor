class ServiceStationsController < ApplicationController
  before_action :set_service_station, only: [:show, :edit, :update, :destroy]

  def index
    @service_stations = ServiceStation.order(position: 'ASC').where(user_id: current_user.id)
                                                             .paginate(page: params[:page], per_page: 10)
  end

  def show
  end

  def new
    @service_station = ServiceStation.new
  end

  def edit
  end

  def create
    @user = current_user
    @service_station = @user.service_stations.build(service_station_params)

    respond_to do |format|
      if @service_station.save
        format.html { redirect_to @service_station, notice: 'Service station was successfully created.' }
        format.json { render :show, status: :created, location: @service_station }
      else
        format.html { render :new }
        format.json { render json: @service_station.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @service_station.update(service_station_params)
        format.html { redirect_to @service_station, notice: 'Service station was successfully updated.' }
        format.json { render :show, status: :ok, location: @service_station }
      else
        format.html { render :edit }
        format.json { render json: @service_station.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @service_station.destroy
    respond_to do |format|
      format.html { redirect_to service_stations_url, notice: 'Service station was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_service_station
      @service_station = ServiceStation.find(params[:id])
    end
    def service_station_params
      params.require(:service_station).permit(:name, :address, :zip, :city, :province, :country, :vat_number, :user_id, :position)
    end
end
