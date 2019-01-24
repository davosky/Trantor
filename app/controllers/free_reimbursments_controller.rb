class FreeReimbursmentsController < ApplicationController
  before_action :set_free_reimbursment, only: [:show, :edit, :update, :destroy]

  def index
    @q = FreeReimbursment.ransack(params[:q])
    @free_reimbursments = @q.result(distinct: true).order(departure_date: 'DESC').where(user_id: current_user.id).paginate(page: params[:page], per_page: 10)
  end

  def show
  end

  def billdownload
    @user = current_user
      @q = FreeReimbursment.ransack(params[:q])
      @free_reimbursments = @q.result(distinct: true).order(departure_date: 'ASC').where(user_id: current_user.id).paginate(page: params[:page], per_page: 50)
      respond_to do |format|
        format.html
        format.json
        format.pdf { render template: 'free_reimbursments/pdfbilldownload', pdf: 'pdfbilldownload' }
      end
  end

  def billdownloadlist
    @user = current_user
      @q = FreeReimbursment.ransack(params[:q])
      @free_reimbursments = @q.result(distinct: true).order(departure_date: 'ASC').where(user_id: current_user.id).paginate(page: params[:page], per_page: 50)
      respond_to do |format|
        format.html
        format.json
        format.pdf { render template: 'free_reimbursments/pdfbilldownloadlist', pdf: 'pdfbilldownloadlist' }
      end
      @totale
      @totalegenerale
  end

  def new
    @free_reimbursment = FreeReimbursment.new
  end

  def edit
  end

  def create
    @user = current_user
    @free_reimbursment = @user.free_reimbursments.build(free_reimbursment_params)
    @free_reimbursment.institute = @user.institute
    @free_reimbursment.secretary = @user.secretary
    @free_reimbursment.address = @user.address
    @free_reimbursment.costkm = @user.cost_per_km

    respond_to do |format|
      if @free_reimbursment.save
        format.html { redirect_to @free_reimbursment, notice: 'Free reimbursment was successfully created.' }
        format.json { render :show, status: :created, location: @free_reimbursment }
      else
        format.html { render :new }
        format.json { render json: @free_reimbursment.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @free_reimbursment.update(free_reimbursment_params)
        format.html { redirect_to @free_reimbursment, notice: 'Free reimbursment was successfully updated.' }
        format.json { render :show, status: :ok, location: @free_reimbursment }
      else
        format.html { render :edit }
        format.json { render json: @free_reimbursment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @free_reimbursment.destroy
    respond_to do |format|
      format.html { redirect_to free_reimbursments_url, notice: 'Free reimbursment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_free_reimbursment
      @free_reimbursment = FreeReimbursment.find(params[:id])
    end

    def free_reimbursment_params
      params.require(:free_reimbursment).permit(:name, :transport_type_id, :veichle_id, :mission_place, :mission_structure, :mission_reason, :departure_date, :return_date, :request_date, :reimbursment_date, :mission_road, :mission_road_km, :mission_road_hw, :parking_cost, :food_cost, :room_cost, :ticket_cost, :generic_cost, :costkm, :secretary, :institute, :address, :user_id)
    end
end
