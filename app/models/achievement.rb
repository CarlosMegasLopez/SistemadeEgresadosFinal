class Achievement < ApplicationRecord
  belongs_to :user

  mount_uploader :imagen_logro, GaleriapictureUploader

  validates :imagen_logro, presence: { message: "Es necesario que suba una imagen"}
  validates :titulo_logro, presence: { message: "Este campo no puede estar vacío"},
                           length: { maximum: 100, message: "El título no debe de tener mas de 100 caracteres" }
  validates :descripcion_logro, presence: { message: "Este campo no puede estar vacío"}

  scope :ultimos, -> {order("created_at DESC")}

  def self.search(search)
	  if search
	    where('LOWER(facultad_logro) LIKE ?', "%#{search}%")
	  else
	    all
	  end
  end



end
