class OfferPolicy
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

    def mismafacultad
      current_user.career_id == record.user.career_id
    end



    def edit?
      admin? || egre? && propio || facu? && propio
    end

    def destroy?
      admin? || egre? && propio || facu? && mismafacultad
    end


end