class ReimbursmentsController < ApplicationController
  before_action :set_reimbursment, only: [:show, :edit, :update, :destroy]

  def index
    @q = Reimbursment.ransack(params[:q])
    @reimbursments = @q.result(distinct: true).order(departure_date: 'DESC').where(user_id: current_user.id).paginate(page: params[:page], per_page: 10)
  end

  def show
  end

  def billdownload
    @user = current_user
      @q = Reimbursment.ransack(params[:q])
      @reimbursments = @q.result(distinct: true).order(departure_date: 'ASC').where(user_id: current_user.id).paginate(page: params[:page], per_page: 50)
      respond_to do |format|
        format.html
        format.json
        format.pdf { render template: 'reimbursments/pdfbilldownload', pdf: 'pdfbilldownload' }
      end
  end

  def new
    @reimbursment = Reimbursment.new
  end

  def edit
  end

  def create
    @user = current_user
    @reimbursment = @user.reimbursments.build(reimbursment_params)
    @reimbursment.institute = @user.institute
    @reimbursment.secretary = @user.secretary
    @reimbursment.address = @user.address

    respond_to do |format|
      if @reimbursment.save
        format.html { redirect_to @reimbursment, notice: 'Reimbursment was successfully created.' }
        format.json { render :show, status: :created, location: @reimbursment }
      else
        format.html { render :new }
        format.json { render json: @reimbursment.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @reimbursment.update(reimbursment_params)
        format.html { redirect_to @reimbursment, notice: 'Reimbursment was successfully updated.' }
        format.json { render :show, status: :ok, location: @reimbursment }
      else
        format.html { render :edit }
        format.json { render json: @reimbursment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @reimbursment.destroy
    respond_to do |format|
      format.html { redirect_to reimbursments_url, notice: 'Reimbursment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_reimbursment
      @reimbursment = Reimbursment.find(params[:id])
    end

    def reimbursment_params
      params.require(:reimbursment).permit(:name, :transport_type_id, :veichle_id, :mission_place_id, :mission_structure_id, :mission_reason_id, :departure_date, :return_date, :request_date, :reimbursment_date, :mission_road_id, :parking_cost, :food_cost, :room_cost, :ticket_cost, :generic_cost, :costkm, :secretary, :institute, :address, :user_id)
    end
end
