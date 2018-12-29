class TransportTypesController < ApplicationController
  before_action :set_transport_type, only: [:show, :edit, :update, :destroy]

  def index
    @q = TransportType.ransack(params[:q])
    @transport_types = @q.result(distinct: true).order(position: 'ASC').where(user_id: current_user.id).paginate(page: params[:page], per_page: 10)
  end

  def show
  end

  def new
    @transport_type = TransportType.new
  end

  def edit
  end

  def create
    @user = current_user
    @transport_type = @user.transport_types.build(transport_type_params)

    respond_to do |format|
      if @transport_type.save
        format.html { redirect_to @transport_type, notice: 'La tipologia mezzo e stata creata.' }
        format.json { render :show, status: :created, location: @transport_type }
      else
        format.html { render :new }
        format.json { render json: @transport_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @transport_type.update(transport_type_params)
        format.html { redirect_to @transport_type, notice: 'La tipologia mezzo e stata modificata.' }
        format.json { render :show, status: :ok, location: @transport_type }
      else
        format.html { render :edit }
        format.json { render json: @transport_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @transport_type.destroy
    respond_to do |format|
      format.html { redirect_to transport_types_url, notice: 'La tipologia mezzo e stata eliminata.' }
      format.json { head :no_content }
    end
  end

  private
    def set_transport_type
      @transport_type = TransportType.find(params[:id])
    end

    def transport_type_params
      params.require(:transport_type).permit(:name, :position, :user_id)
    end
end
