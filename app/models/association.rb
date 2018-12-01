class Association < ApplicationRecord

	validates :nombre_empresa, presence: { message: "Este campo no puede estar vacío"}
	validates :contacto_empresa, presence: { message: "Este campo no puede estar vacío"}
	validates :telefono_empresa, numericality: { only_integer: true, message: "Campo vacío o formato de número inválido" },
								 length: { in: 7..15, message: "El número debe contener entre 7 o 15 caracteres" } 
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  	validates :correo_electronico_empresa, format: { :with => VALID_EMAIL_REGEX , message: "Campo vacío o formato de correo inválido" }


  	def self.to_csv(options = {})

	  	CSV.generate(options) do |csv|
	  		csv << column_names
	  		all.each do |association|
	  			csv << association.attributes.values_at(*column_names)
	  	end		
	   end

	end

end
