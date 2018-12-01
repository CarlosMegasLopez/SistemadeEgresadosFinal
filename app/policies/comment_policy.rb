class CommentPolicy
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
            if @user.Egresado?
              scope.where(user: @user)
              else
                if @user.Facultad?
                   scope.where(facultad: @user.career.descripcion_carrera)
                end
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
      current_user.career.descripcion_carrera == record.facultad
    end


    def show?
      admin? || egre? && propio || facu? && mismafacultad
    end

    def edit?
      admin? || egre? && propio || facu? && propio
    end

    def destroy?
      admin? || egre? && propio || facu? && mismafacultad
    end


end
