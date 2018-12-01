class Search < ApplicationRecord

	def search_users

		users = User.all

		users = users.where(["matricula_user LIKE ?", matricula_user]) if matricula_user.present?
		users = users.where(["LOWER(nombre_user || ' ' || apellido_paterno_user || ' ' || apellido_materno_user) ILIKE ?", 
	    							"%#{keywords}%"]) if keywords.present?
		users = users.where(career_id: career_id) if career_id.present?
		users = users.where(generation_id: generation_id) if generation_id.present?
		users = users.where(["sexo_user LIKE ?", sexo_user]) if sexo_user.present?
		users = users.where(["email LIKE ?", email]) if email.present?
		users = users.where(["status_user LIKE ?", status_user]) if status_user.present?

		return users
	end

end

