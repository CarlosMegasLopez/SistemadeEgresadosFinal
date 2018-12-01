class GraduatePolicy 
  attr_reader :current_user, :record
  # attr_reader :user, :record
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
        if @user.Administrador?
          scope.all
          else 
            if @user.Facultad?
              scope.where(career_id: @user.career_id)
            end
        end
      end

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

    def mismafacultad
      current_user.career_id == record.career_id
    end



    def index?
      admin? || facu?
    end

    def new?
      admin? || facu?
    end

    def show?
      admin? || facu? && mismafacultad
    end

    def edit?
      admin? || facu? && mismafacultad
    end

    def destroy?
      admin? || facu? && mismafacultad
    end



end
