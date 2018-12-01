class Article < ApplicationRecord
  belongs_to :user
  belongs_to :category

  mount_uploader :imagen_noticia, NoticiapictureUploader

  validates :imagen_noticia, presence: { message: "Es necesario que suba una imagen"}
  validates :category_id, presence: { message: "Selecciona una opción"}
  validates :titulo_noticia, presence: { message: "Este campo no puede estar vacío"},
                             length: { maximum: 100, message: "El título no debe de tener mas de 100 caracteres" }

  scope :ultimos, -> {order("created_at DESC")}

  def self.search(search)
	  if search
	    where('LOWER(titulo_noticia) LIKE ?', "%#{search}%")
	  else
	    all
	  end
  end


end
