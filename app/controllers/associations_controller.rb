class AssociationsController < ApplicationController
  before_action :set_association, only: [:show, :edit, :update, :destroy]
  
  layout 'userinterface'
  before_action :authenticate_user!
  
  # GET /associations
  # GET /associations.json
  def index
    @associations = Association.all

    respond_to do |format|
      format.html
      format.csv {send_data @associations.to_csv }
      format.xls #{send_data @graduates.to_csv(col_sep: "\t") }

      format.pdf {render template: "associations/index", pdf: "index", layout: "pdf.html"}

    end
    
  end

  # GET /associations/1
  # GET /associations/1.json
  def show
  end

  # GET /associations/new
  def new
    @association = Association.new
  end

  # GET /associations/1/edit
  def edit
  end

  # POST /associations
  # POST /associations.json
  def create
    @association = Association.new(association_params)

    respond_to do |format|
      if @association.save
        format.html { redirect_to @association, notice: 'La Empresa ha sido creada satisfactoriamente.' }
        format.json { render :show, status: :created, location: @association }
      else
        format.html { render :new }
        format.json { render json: @association.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /associations/1
  # PATCH/PUT /associations/1.json
  def update
    respond_to do |format|
      if @association.update(association_params)
        format.html { redirect_to @association, notice: 'La Empresa ha sido actualizada satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @association }
      else
        format.html { render :edit }
        format.json { render json: @association.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /associations/1
  # DELETE /associations/1.json
  def destroy
    @association.destroy
    respond_to do |format|
      format.html { redirect_to associations_url, notice: 'La Empresa ha sido eliminada satisfactoriamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_association
      @association = Association.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def association_params
      params.require(:association).permit(:nombre_empresa, :contacto_empresa, :telefono_empresa, :correo_electronico_empresa, :otro_telefono_empresa, :celular_empresa, :informacion_empresa)
    end
end
