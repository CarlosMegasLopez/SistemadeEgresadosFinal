class CategoryPolicy 
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

  def propio
    current_user == record.user
  end

  def superadmin?
    admin? && current_user.id == 1
  end


  def index?
    superadmin?
  end

  def new?
    superadmin?
  end

  def edit?
    superadmin?
  end

  def show?
    superadmin?
  end



=begin

  def index?
    admin?
  end

  def new?
    admin?
  end

  def edit?
    admin?
  end

  def show?
    admin?
  end

=end

end
