class Offer < ApplicationRecord
	belongs_to :user

	mount_uploader :anexo_oferta, AnexoUploader

	validates :empresa_oferta, presence: { message: "Este campo no puede estar vacío"}
	validates :vacante_oferta, presence: { message: "Este campo no puede estar vacío"}
	validates :puesto_oferta, presence: { message: "Este campo no puede estar vacío"}
	validates :contacto_oferta, presence: { message: "Este campo no puede estar vacío"}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email_oferta, format: { :with => VALID_EMAIL_REGEX , message: "Campo vacío o formato de correo inválido" }
	validates :celular_oferta, presence: { message: "Este campo no puede estar vacío"}
	validates :telefono_oferta, presence: { message: "Este campo no puede estar vacío"}

end
