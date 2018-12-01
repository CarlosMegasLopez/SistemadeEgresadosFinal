class Report < ApplicationRecord

	def report_graduates

		graduates = Graduate.all

		graduates = graduates.where(["matricula_egresado LIKE ?", matricula_egresado]) if matricula_egresado.present?
		graduates = graduates.where(["LOWER(nombre_egresado || ' ' || apellido_paterno_egresado || ' ' || apellido_materno_egresado) ILIKE ?", 
	    							"%#{keywords_egresado}%"]) if keywords_egresado.present?
		graduates = graduates.where(career_id: career_id) if career_id.present?
		graduates = graduates.where(generation_id: generation_id) if generation_id.present?
		graduates = graduates.where(["sexo_egresado LIKE ?", sexo_egresado]) if sexo_egresado.present?
		graduates = graduates.where(["correo_electronico_egresado LIKE ?", correo_electronico_egresado]) if correo_electronico_egresado.present?
		graduates = graduates.where(["status_egresado LIKE ?", status_egresado]) if status_egresado.present?

		return graduates
	end

end
