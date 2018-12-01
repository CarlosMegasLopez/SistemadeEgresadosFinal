class Comment < ApplicationRecord
  belongs_to :user

  scope :ultimos, -> {order("created_at DESC")}
  scope :primeros, -> {order("created_at ASC")}

  validates :titulo, presence: { message: "Este campo no puede estar vacío"},
  					 length: { maximum: 100, message: "El título no debe de tener mas de 100 caracteres" }
  validates :descripcion, presence: { message: "Este campo no puede estar vacío"},
  						  length: { maximum: 200, message: "El comentario no debe de tener mas de 200 caracteres" }

end
