class GlobalPolicy 
  attr_reader :current_user, :record
  # attr_reader :user, :record
  def initialize(current_user, record)
    @current_user = current_user
    @record = record
  end


  def admin?
    @current_user.Administrador?
  end

  def facu?
    @current_user.Facultad?
  end

  def egre?
    @current_user.Egresado?
  end

  def superadmin?
    admin? && current_user.id == 1
  end


end
