class FuelsController < ApplicationController
  before_action :set_fuel, only: [:show, :edit, :update, :destroy]

  def index
    @user = current_user
      @q = Fuel.ransack(params[:q])
      @fuels = @q.result(distinct: true).order(date: 'DESC').where(user_id: current_user.id).paginate(page: params[:page], per_page: 150)
      respond_to do |format|
        format.html
        format.json
      end
  end

  def billdownload
    @user = current_user
      @q = Fuel.ransack(params[:q])
      @fuels = @q.result(distinct: true).order(date: 'ASC').where(user_id: current_user.id).paginate(page: params[:page], per_page: 150)
      respond_to do |format|
        format.html
        format.json
        format.pdf { render template: 'fuels/pdfbilldownload', pdf: 'pdfbilldownloadfuel' }
      end
      @totale
      @totalegenerale
  end

  def show
  end

  def new
    @fuel = Fuel.new
  end

  def edit
  end

  def create
    @user = current_user
    @fuel = @user.fuels.build(fuel_params)

    respond_to do |format|
      if @fuel.save
        format.html { redirect_to @fuel, notice: 'Fuel was successfully created.' }
        format.json { render :show, status: :created, location: @fuel }
      else
        format.html { render :new }
        format.json { render json: @fuel.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @fuel.update(fuel_params)
        format.html { redirect_to @fuel, notice: 'Fuel was successfully updated.' }
        format.json { render :show, status: :ok, location: @fuel }
      else
        format.html { render :edit }
        format.json { render json: @fuel.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @fuel.destroy
    respond_to do |format|
      format.html { redirect_to fuels_url, notice: 'Fuel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_fuel
      @fuel = Fuel.find(params[:id])
    end

    def fuel_params
      params.require(:fuel).permit(:name, :date, :place, :service_station_id, :payment_typology_id, :amount, :user_id, :km)
    end
end
