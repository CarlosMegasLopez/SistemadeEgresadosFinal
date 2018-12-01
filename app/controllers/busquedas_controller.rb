class BusquedasController < ApplicationController
  
  layout 'userinterface'
  before_action :authenticate_user!

  def index
  	egresado = params[:nombre_egresado]
    sexo = params[:sexo_egresado]

	  if egresado.present?
	    @result = Graduate.where("LOWER(nombre_egresado || ' ' || apellido_paterno_egresado || ' ' || apellido_materno_egresado) ILIKE ?", 
	    	"%#{egresado}%")

    elsif sexo.present?
      @result = Graduate.where("sexo = ?", sexo)

    elsif egresado.present? && sexo.present?
       @result = Graduate.where("LOWER(nombre_egresado || ' ' || apellido_paterno_egresado || ' ' || apellido_materno_egresado) ILIKE ?
        AND sexo = ?", "%#{egresado}%", sexo)

	  end
  end

  def new
  end

  def create
  	if valid_params
  		redirect_to busquedas_path( 
        nombre_egresado: params['/busquedas'][:nombre_egresado], 
        sexo_egresado: params['/busquedas'][:sexo_egresado]
        )
  	else
  		redirect_to new_busqueda_path, alert: 'Ha ocurrido un error, vuelve a verifiarllos datos enviados'
  	end
  end

  private
  def valid_params
  	params['/busquedas'][:nombre_egresado, :sexo_egresado].present? ? true : false
  end

end
