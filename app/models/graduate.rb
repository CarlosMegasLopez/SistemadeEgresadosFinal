class Graduate < ApplicationRecord
  belongs_to :career
  belongs_to :generation

  mount_uploader :avatar_egresado, EgresadopictureUploader

  		validates :career_id, presence: { message: "Selecciona una opción"}
  		validates :generation_id, presence: { message: "Selecciona una opción"}
		validates :matricula_egresado, numericality: { only_integer: true, message: "Campo vacío o formato de número inválido" },
								 length: { is: 9, message: "La Matrícula debe contener 9 caracteres" }
		validates :nombre_egresado, presence: { message: "Este campo no puede estar vacío"}
		validates :apellido_paterno_egresado, presence: { message: "Este campo no puede estar vacío"}
		validates :apellido_materno_egresado, presence: { message: "Este campo no puede estar vacío"}
		
		#validates :externa_egresado, length: { in: 9..12, message: "El número debe contener entre 9 o 12 caracteres" }, 
				  #allow_blank: true						  
		#validates :cumpleanos_egresado, presence: { message: "Este campo no puede estar vacío"}
		#validates :nacimiento_egresado, presence: { message: "Este campo no puede estar vacío"}
		#validates :nacionalidad_egresado, presence: { message: "Este campo no puede estar vacío"}
		#validates :sexo_egresado, presence: { message: "Debes seleccionar una opción"}
		#validates :status_egresado, presence: { message: "Debes seleccionar una opción"}
  		#validates :nivel_egresado, presence: { message: "Debes seleccionar una opción"}			
		#validates :colonia_egresado, presence: { message: "Este campo no puede estar vacío"}
		#validates :calle_egresado, presence: { message: "Este campo no puede estar vacío"}
		#validates :codigo_postal_egresado, numericality: { only_integer: true, message: "Campo vacío o formato de número inválido" }
		#validates :celular_egresado, numericality: { only_integer: true, message: "Campo vacío o formato de número inválido" },
								 #length: { in: 7..15, message: "El número debe contener entre 7 o 15 caracteres" } 
		#VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  		#validates :correo_electronico_egresado, format: { :with => VALID_EMAIL_REGEX , message: "Campo vacío o formato de correo inválido" }
  		


  def nombre_completo_egresado

	"#{nombre_egresado} #{apellido_paterno_egresado} #{apellido_materno_egresado}"

	end

  def self.to_csv(options = {})

  	CSV.generate(options) do |csv|
  		csv << column_names
  		all.each do |graduate|
  			csv << graduate.attributes.values_at(*column_names)
  	end		
   end

  end

end
