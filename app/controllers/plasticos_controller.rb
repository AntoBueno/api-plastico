class PlasticosController < ApplicationController
  before_action :set_plastico, only: [:show, :update, :destroy]

  # GET /plasticos
  def index
    @plasticos = Plastico.all

    render json: @plasticos
  end

  # GET /plasticos/1
  def show
    render json: @plastico
  end

  # POST /plasticos
  def create
    @plastico = Plastico.new(plastico_params)

    if @plastico.save
      render json: @plastico, status: :created, location: @plastico
    else
      render json: @plastico.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /plasticos/1
  def update
    if @plastico.update(plastico_params)
      render json: @plastico
    else
      render json: @plastico.errors, status: :unprocessable_entity
    end
  end

  # DELETE /plasticos/1
  def destroy
    @plastico.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plastico
      @plastico = Plastico.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def plastico_params
      params.require(:plastico).permit(:cantidad, :integer, :fecha, :datetime)
    end
end
