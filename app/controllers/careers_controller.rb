class CareersController < ApplicationController
  before_action :set_career, only: [:show, :edit, :update, :destroy]
  
  layout 'userinterface'
  before_action :authenticate_user!
  # GET /careers
  # GET /careers.json
  def index
    @careers = Career.all
    authorize Career

    respond_to do |format|
      format.html
      format.csv {send_data @careers.to_csv }
      format.xls #{send_data @graduates.to_csv(col_sep: "\t") }

      format.pdf {render template: "careers/index", pdf: "index", layout: "pdf.html"}

    end

  end

  # GET /careers/1
  # GET /careers/1.json
  def show
    authorize @career
  end

  # GET /careers/new
  def new
    @career = Career.new
    authorize @career
  end

  # GET /careers/1/edit
  def edit
    authorize @career
  end

  # POST /careers
  # POST /careers.json
  def create
    @career = Career.new(career_params)

    respond_to do |format|
      if @career.save
        format.html { redirect_to @career, notice: 'La Facultad ha sido creada satisfactoriamente.' }
        format.json { render :show, status: :created, location: @career }
      else
        format.html { render :new }
        format.json { render json: @career.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /careers/1
  # PATCH/PUT /careers/1.json
  def update
    respond_to do |format|
      if @career.update(career_params)
        format.html { redirect_to @career, notice: 'La Facultad ha sido actualizada satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @career }
      else
        format.html { render :edit }
        format.json { render json: @career.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /careers/1
  # DELETE /careers/1.json
  def destroy
    @career.destroy
    respond_to do |format|
      format.html { redirect_to careers_url, notice: 'La Facultad ha sido eliminada satisfactoriamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_career
      @career = Career.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def career_params
      params.require(:career).permit(:descripcion_carrera, :imagen_carrera)
    end
end
