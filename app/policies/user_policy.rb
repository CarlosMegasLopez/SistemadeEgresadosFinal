class UserPolicy 

# binding.pry

  #attr_reader :current_user, :model
  # attr_reader :user, :record
  #def initialize(current_user, model)
    #@current_user = current_user
    #@user = model
  #end

  attr_reader :current_user, :record
  def initialize(current_user, record)
    @current_user = current_user
    @record = record
  end

  class Scope
      attr_reader :current_user, :scope
      
      def initialize(user, scope)
        @user = user
        @scope = scope
      end

      def resolve
        if @user.Administrador? && @user.id == 1
          scope.all
          else
            if @user.Administrador?
              scope.where.not(id: 1)
              else 
                if @user.Facultad?
                  scope.where(career_id: @user.career_id).where.not(id: 1)
                end
            end
          end
      end

    end

  def admin?
  	current_user.Administrador?
  end

  def facu?
  	current_user.Facultad?
  end

  def egre?
  	current_user.Egresado?
  end

  def superadmin?
    admin? && current_user.id == 1
  end

  def mismafacultad
    current_user.career_id == record.career_id
  end


  def index?
    superadmin?
  end

  def new?
    superadmin?
  end

  def show?
    superadmin?
  end

  def edit?
    superadmin?
  end

  def destroy?
    superadmin?
  end

=begin

  def index?
    admin? || facu?
  end

  def new?
    admin? || facu?
  end

  def show?
    superadmin? || ((admin? || facu? && mismafacultad)  && (record.id != 1))
  end

  def edit?
    superadmin? || ((admin? || facu? && mismafacultad)  && (record.id != 1))
  end

  def destroy?
    superadmin? || ((admin? || facu? && mismafacultad)  && (record.id != 1))
  end

=end

end