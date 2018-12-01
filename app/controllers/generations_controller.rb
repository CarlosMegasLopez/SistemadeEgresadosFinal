class GenerationsController < ApplicationController
  before_action :set_generation, only: [:show, :edit, :update, :destroy]
  
  layout 'userinterface'
  before_action :authenticate_user!
  
  # GET /generations
  # GET /generations.json
  def index
    #@generations = Generation.all
    @generations = policy_scope(Generation)
    authorize Generation

    respond_to do |format|
      format.html
      format.csv {send_data @generations.to_csv }
      format.xls #{send_data @graduates.to_csv(col_sep: "\t") }

      format.pdf {render template: "generations/index", pdf: "index", layout: "pdf.html"}

    end

  end

  # GET /generations/1
  # GET /generations/1.json
  def show
    authorize @generation
  end

  # GET /generations/new
  def new
    @generation = Generation.new
    authorize @generation
  end

  # GET /generations/1/edit
  def edit
    authorize @generation
  end

  # POST /generations
  # POST /generations.json
  def create
    @generation = Generation.new(generation_params)

    respond_to do |format|
      if @generation.save
        format.html { redirect_to @generation, notice: 'La Generación ha sido creada satisfactoriamente.' }
        format.json { render :show, status: :created, location: @generation }
      else
        format.html { render :new }
        format.json { render json: @generation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /generations/1
  # PATCH/PUT /generations/1.json
  def update
    respond_to do |format|
      if @generation.update(generation_params)
        format.html { redirect_to @generation, notice: 'La Generación ha sido actualizada satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @generation }
      else
        format.html { render :edit }
        format.json { render json: @generation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /generations/1
  # DELETE /generations/1.json
  def destroy
    @generation.destroy
    respond_to do |format|
      format.html { redirect_to generations_url, notice: 'La Generación ha sido eliminada satisfactoriamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_generation
      @generation = Generation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def generation_params
      params.require(:generation).permit(:career_id, :descripcion_generacion, :imagen_generacion)
    end
end
