class SearchesController < ApplicationController
  
  layout 'userinterface'
  before_action :authenticate_user!

  def new
    @search = Search.new
    authorize Search
  end

  def create
    @search = Search.create(search_params)
    redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
    authorize @search

    respond_to do |format|
      format.html
      format.xls #{send_data @graduates.to_csv(col_sep: "\t") }

      format.pdf {render template: "searches/show", pdf: "show", layout: "pdf.html"}

    end
  end

	private

	def search_params
		params.require(:search).permit(:keywords, :career_id, :nombre_user, :apellido_paterno_user, :apellido_materno_user, 
									   :sexo_user, :email, :status_user, :matricula_user, :generation_id)
	end

end