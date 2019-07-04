class MissionPlacesController < ApplicationController
  before_action :set_mission_place, only: [:show, :edit, :update, :destroy]

  def index
    @q = MissionPlace.ransack(params[:q])
    @mission_places = @q.result(distinct: true).order(position: 'ASC').where(user_id: current_user.id).paginate(page: params[:page], per_page: 100)
  end

  def show
  end

  def new
    @mission_place = MissionPlace.new
  end

  def edit
  end

  def create
    @user = current_user
    @mission_place = @user.mission_places.build(mission_place_params)

    respond_to do |format|
      if @mission_place.save
        format.html { redirect_to @mission_place, notice: 'Mission place was successfully created.' }
        format.json { render :show, status: :created, location: @mission_place }
      else
        format.html { render :new }
        format.json { render json: @mission_place.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @mission_place.update(mission_place_params)
        format.html { redirect_to @mission_place, notice: 'Mission place was successfully updated.' }
        format.json { render :show, status: :ok, location: @mission_place }
      else
        format.html { render :edit }
        format.json { render json: @mission_place.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @mission_place.destroy
    respond_to do |format|
      format.html { redirect_to mission_places_url, notice: 'Mission place was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_mission_place
      @mission_place = MissionPlace.find(params[:id])
    end

    def mission_place_params
      params.require(:mission_place).permit(:name, :position, :user_id)
    end
end
