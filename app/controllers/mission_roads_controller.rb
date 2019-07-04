class MissionRoadsController < ApplicationController
  before_action :set_mission_road, only: [:show, :edit, :update, :destroy]

  def index
    @q = MissionRoad.ransack(params[:q])
    @mission_roads = @q.result(distinct: true).order(position: 'ASC').where(user_id: current_user.id).paginate(page: params[:page], per_page: 100)
  end

  def show
  end

  def new
    @mission_road = MissionRoad.new
  end

  def edit
  end

  def create
    @user = current_user
    @mission_road = @user.mission_roads.build(mission_road_params)

    respond_to do |format|
      if @mission_road.save
        format.html { redirect_to @mission_road, notice: 'Mission road was successfully created.' }
        format.json { render :show, status: :created, location: @mission_road }
      else
        format.html { render :new }
        format.json { render json: @mission_road.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @mission_road.update(mission_road_params)
        format.html { redirect_to @mission_road, notice: 'Mission road was successfully updated.' }
        format.json { render :show, status: :ok, location: @mission_road }
      else
        format.html { render :edit }
        format.json { render json: @mission_road.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @mission_road.destroy
    respond_to do |format|
      format.html { redirect_to mission_roads_url, notice: 'Mission road was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_mission_road
      @mission_road = MissionRoad.find(params[:id])
    end

    def mission_road_params
      params.require(:mission_road).permit(:name, :km, :highway_cost, :position, :user_id)
    end
end
