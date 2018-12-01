class Request < ApplicationRecord
  belongs_to :user

  mount_uploader :curriculum_solicitud, CurriculumUploader

  validates :especialidad_solicitud, presence: { message: "Este campo no puede estar vacío"}
  validates :habilidad_solicitud, presence: { message: "Este campo no puede estar vacío"}
  validates :disponibilidad_solicitud, presence: { message: "Este campo no puede estar vacío"}
  validates :idioma_solicitud, presence: { message: "Este campo no puede estar vacío"}
  validates :curriculum_solicitud, presence: { message: "Es necesario que suba su curriculum"}

end
