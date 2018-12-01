class Roulette < ApplicationRecord
  belongs_to :user

  mount_uploader :imagen_carrusel, RuletapictureUploader

  validates :imagen_carrusel, presence: { message: "Es necesario que suba una imagen"}
  validates :nombre_carrusel, presence: { message: "Este campo no puede estar vacío"}
  validates :titulo_carrusel, length: { maximum: 100, message: "El título no debe de tener mas de 100 caracteres" }    
  validates :subtitulo_carrusel, length: { maximum: 100, message: "El subtítulo no debe de tener mas de 100 caracteres" }
  validate :limite_imagenes_carrusel, :on => :create



=begin
  def limite_imagenes_carrusel
    if self.user.roulettes(:reload).count == 16
      errors.add(:base, "Se ha alcanzado el número maximo de imágenes en el carrusel.")
    end
  end
=end

  def limite_imagenes_carrusel
      roulettes = Roulette.all
      errors.add(:base, "Se ha alcanzado el número maximo de imágenes en el carrusel.") if roulettes.count == 15
  end

end
