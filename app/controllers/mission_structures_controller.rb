class MissionStructuresController < ApplicationController
  before_action :set_mission_structure, only: [:show, :edit, :update, :destroy]

  def index
    @q = MissionStructure.ransack(params[:q])
    @mission_structures = @q.result(distinct: true).order(position: 'ASC').where(user_id: current_user.id).paginate(page: params[:page], per_page: 10)
  end

  def show
  end

  def new
    @mission_structure = MissionStructure.new
  end

  def edit
  end

  def create
    @user = current_user
    @mission_structure = @user.mission_structures.build(mission_structure_params)

    respond_to do |format|
      if @mission_structure.save
        format.html { redirect_to @mission_structure, notice: 'Mission structure was successfully created.' }
        format.json { render :show, status: :created, location: @mission_structure }
      else
        format.html { render :new }
        format.json { render json: @mission_structure.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @mission_structure.update(mission_structure_params)
        format.html { redirect_to @mission_structure, notice: 'Mission structure was successfully updated.' }
        format.json { render :show, status: :ok, location: @mission_structure }
      else
        format.html { render :edit }
        format.json { render json: @mission_structure.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @mission_structure.destroy
    respond_to do |format|
      format.html { redirect_to mission_structures_url, notice: 'Mission structure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_mission_structure
      @mission_structure = MissionStructure.find(params[:id])
    end

    def mission_structure_params
      params.require(:mission_structure).permit(:name, :position, :user_id)
    end
end
