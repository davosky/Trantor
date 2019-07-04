class MissionReasonsController < ApplicationController
  before_action :set_mission_reason, only: [:show, :edit, :update, :destroy]

  def index
    @q = MissionReason.ransack(params[:q])
    @mission_reasons = @q.result(distinct: true).order(position: 'ASC').where(user_id: current_user.id).paginate(page: params[:page], per_page: 100)
  end

  def show
  end

  def new
    @mission_reason = MissionReason.new
  end

  def edit
  end

  def create
    @user = current_user
    @mission_reason = @user.mission_reasons.build(mission_reason_params)

    respond_to do |format|
      if @mission_reason.save
        format.html { redirect_to @mission_reason, notice: 'Mission reason was successfully created.' }
        format.json { render :show, status: :created, location: @mission_reason }
      else
        format.html { render :new }
        format.json { render json: @mission_reason.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @mission_reason.update(mission_reason_params)
        format.html { redirect_to @mission_reason, notice: 'Mission reason was successfully updated.' }
        format.json { render :show, status: :ok, location: @mission_reason }
      else
        format.html { render :edit }
        format.json { render json: @mission_reason.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @mission_reason.destroy
    respond_to do |format|
      format.html { redirect_to mission_reasons_url, notice: 'Mission reason was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_mission_reason
      @mission_reason = MissionReason.find(params[:id])
    end

    def mission_reason_params
      params.require(:mission_reason).permit(:name, :position, :user_id)
    end
end
