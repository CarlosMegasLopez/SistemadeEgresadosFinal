class GraduatesController < ApplicationController
  before_action :set_graduate, only: [:show, :edit, :update, :destroy]

  layout 'userinterface'
  before_action :authenticate_user!

  # GET /graduates
  # GET /graduates.json
  def index
    #@graduates = Graduate.all
    @graduates = policy_scope(Graduate)
    authorize Graduate

    respond_to do |format|
      format.html
      format.csv {send_data @graduates.to_csv }
      format.xls #{send_data @graduates.to_csv(col_sep: "\t") }

      format.pdf {render template: "graduates/index", pdf: "index", layout: "pdf.html"}

    end

  end

  # GET /graduates/1
  # GET /graduates/1.json
  def show
    authorize @graduate
  end

  # GET /graduates/new
  def new
    @graduate = Graduate.new
    authorize @graduate
  end

  # GET /graduates/1/edit
  def edit
    authorize @graduate
  end

  # POST /graduates
  # POST /graduates.json
  def create
    @graduate = Graduate.new(graduate_params)

    respond_to do |format|
      if @graduate.save
        format.html { redirect_to @graduate, notice: 'Egresado(a) creado(a) satisfactoriamente.' }
        format.json { render :show, status: :created, location: @graduate }
      else
        format.html { render :new }
        format.json { render json: @graduate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /graduates/1
  # PATCH/PUT /graduates/1.json
  def update
    respond_to do |format|
      if @graduate.update(graduate_params)
        format.html { redirect_to @graduate, notice: 'Egresado(a) actualizado(a) satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @graduate }
      else
        format.html { render :edit }
        format.json { render json: @graduate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /graduates/1
  # DELETE /graduates/1.json
  def destroy
    @graduate.destroy
    respond_to do |format|
      format.html { redirect_to graduates_url, notice: 'Egresado(a) eliminado(a) satisfactoriamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_graduate
      @graduate = Graduate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def graduate_params
      params.require(:graduate).permit(:career_id, :nombre_egresado, :apellido_paterno_egresado, :apellido_materno_egresado, 
        :sexo_egresado, :colonia_egresado, :calle_egresado, :codigo_postal_egresado, :celular_egresado, :otro_telefono_egresado, 
        :correo_electronico_egresado, :status_egresado, :trabajo_egresado, :estado_civil_egresado, :hijos_egresado, 
        :matricula_egresado, :generation_id, :nacimiento_egresado, :nacionalidad_egresado, :curp_egresado, :rfc_egresado,
        :promedio_egresado, :cumpleanos_egresado, :interior_egresado, :nivel_egresado, :puesto_egresado, :externa_egresado,
        :teltrabajo_egresado, :referencia_egresado, :avatar_egresado)
    end
end

