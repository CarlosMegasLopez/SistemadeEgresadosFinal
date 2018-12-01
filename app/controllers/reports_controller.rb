class ReportsController < ApplicationController

  layout 'userinterface'
  before_action :authenticate_user!

  def new
    @report = Report.new
    authorize Report
  end

  def create
    @report = Report.create(report_params)
    redirect_to @report
  end

  def show
    @report = Report.find(params[:id])
    authorize @report

    respond_to do |format|
      format.html
      format.xls #{send_data @graduates.to_csv(col_sep: "\t") }

      format.pdf {render template: "reports/show", pdf: "show", layout: "pdf.html"}

    end
  end

	private

	def report_params
		params.require(:report).permit(:keywords_egresado, :career_id, :nombre_egresado, :apellido_paterno_egresado, 
									   :apellido_materno_egresado, :sexo_egresado, :correo_electronico_egresado, 
									   :status_egresado, :matricula_egresado, :generation_id)
	end


end
