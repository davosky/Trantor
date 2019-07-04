class VeichlesController < ApplicationController
  before_action :set_veichle, only: [:show, :edit, :update, :destroy]

  def index
    @q = Veichle.ransack(params[:q])
    @veichles = @q.result(distinct: true).order(position: 'ASC').where(user_id: current_user.id).paginate(page: params[:page], per_page: 100)
  end

  def show
  end

  def new
    @veichle = Veichle.new
  end

  def edit
  end

  def create
    @user = current_user
    @veichle = @user.veichles.build(veichle_params)
    respond_to do |format|
      if @veichle.save
        format.html { redirect_to @veichle, notice: 'Veichle was successfully created.' }
        format.json { render :show, status: :created, location: @veichle }
      else
        format.html { render :new }
        format.json { render json: @veichle.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @veichle.update(veichle_params)
        format.html { redirect_to @veichle, notice: 'Veichle was successfully updated.' }
        format.json { render :show, status: :ok, location: @veichle }
      else
        format.html { render :edit }
        format.json { render json: @veichle.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @veichle.destroy
    respond_to do |format|
      format.html { redirect_to veichles_url, notice: 'Veichle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_veichle
      @veichle = Veichle.find(params[:id])
    end

    def veichle_params
      params.require(:veichle).permit(:name, :producer, :licenceplate, :position, :user_id)
    end
end
