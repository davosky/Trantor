class PaymentTypologiesController < ApplicationController
  before_action :set_payment_typology, only: [:show, :edit, :update, :destroy]

  def index
    @payment_typologies = PaymentTypology.order(position: 'ASC').where(user_id: current_user.id)
                                                                .paginate(page: params[:page], per_page: 100)
  end

  def show
  end

  def new
    @payment_typology = PaymentTypology.new
  end

  def edit
  end

  def create
    @user = current_user
    @payment_typology = @user.payment_typologies.build(payment_typology_params)

    respond_to do |format|
      if @payment_typology.save
        format.html { redirect_to @payment_typology, notice: 'Payment typology was successfully created.' }
        format.json { render :show, status: :created, location: @payment_typology }
      else
        format.html { render :new }
        format.json { render json: @payment_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @payment_typology.update(payment_typology_params)
        format.html { redirect_to @payment_typology, notice: 'Payment typology was successfully updated.' }
        format.json { render :show, status: :ok, location: @payment_typology }
      else
        format.html { render :edit }
        format.json { render json: @payment_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @payment_typology.destroy
    respond_to do |format|
      format.html { redirect_to payment_typologies_url, notice: 'Payment typology was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_payment_typology
      @payment_typology = PaymentTypology.find(params[:id])
    end

    def payment_typology_params
      params.require(:payment_typology).permit(:name, :user_id, :position)
    end
end
