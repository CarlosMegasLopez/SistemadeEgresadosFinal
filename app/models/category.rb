class Category < ApplicationRecord
	has_many :articles, dependent: :destroy

	validates :nombre_categoria, presence: { message: "Este campo no puede estar vacío"}
	validates :nombre_categoria, uniqueness: { message: "Este registro ya existe"}
	validates :color_categoria, presence: { message: "Este campo no puede estar vacío"}
end
