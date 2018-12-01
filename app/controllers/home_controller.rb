class HomeController < ApplicationController

	layout 'userinterface'
	before_action :authenticate_user!
	
  def index
     @roulettes = Roulette.all
  end

  def credencial
  end

  def filosofia
  end

  def bienvenida
  end

end
