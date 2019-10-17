class DatosplasticosController < ApplicationController
  before_action :set_datosplastico, only: [:show, :update, :destroy]

  # GET /datosplasticos
  def index
    @datosplasticos = Datosplastico.all

    render json: @datosplasticos
  end

  # GET /datosplasticos/1
  def show
    render json: @datosplastico
  end

  # POST /datosplasticos
  def create
    @datosplastico = Datosplastico.new(datosplastico_params)

    if @datosplastico.save
      render json: @datosplastico, status: :created, location: @datosplastico
    else
      render json: @datosplastico.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /datosplasticos/1
  def update
    if @datosplastico.update(datosplastico_params)
      render json: @datosplastico
    else
      render json: @datosplastico.errors, status: :unprocessable_entity
    end
  end

  # DELETE /datosplasticos/1
  def destroy
    @datosplastico.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_datosplastico
      @datosplastico = Datosplastico.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def datosplastico_params
      params.require(:datosplastico).permit(:cantidad, :fecha)
    end
end
