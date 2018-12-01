class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  layout 'userinterface'
  before_action :authenticate_user!

  def index
  	#@users = User.all
    #authorize User

    @users = policy_scope(User)
    authorize User

    respond_to do |format|
      format.html
      format.csv {send_data @users.to_csv }
      format.xls #{send_data @graduates.to_csv(col_sep: "\t") }

      format.pdf {render template: "users/index", pdf: "index", layout: "pdf.html"}
    end

  end

  def show
    authorize @user
  end

  def new
  	@user = User.new
    authorize @user
  end

  def edit
    authorize @user
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'Usuario(a) creado(a) satisfactoriamente.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'Usuario(a) actualizado(a) satisfactoriamente.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'Usuario(a) eliminado(a) satisfactoriamente.' }
    end
  end

  private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:email, :type_user, :career_id, :generation_id, :nombre_user, 
        :apellido_paterno_user, :apellido_materno_user, :matricula_user, :externa_user, :cumpleanos_user, :nacimiento_user,
        :nacionalidad_user, :curp_user, :sexo_user, :estado_civil_user, :hijos_user, :rfc_user, :promedio_user, :status_user,
        :nivel_user, :calle_user, :interior_user, :referencia_user, :colonia_user, :codigo_postal_user, :trabajo_user,
        :puesto_user, :teltrabajo_user, :celular_user, :otro_telefono_user, :avatar_user)
    end

end
