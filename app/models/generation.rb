class Generation < ApplicationRecord
  belongs_to :career
  has_many :graduates, dependent: :destroy

  has_many :users, dependent: :destroy

  mount_uploader :imagen_generacion, GeneracionpictureUploader
  
  validates :descripcion_generacion, presence: { message: "Este campo no puede estar vacío"}
  validates :career_id, presence: { message: "Selecciona una opción"}

  def self.to_csv(options = {})

  	CSV.generate(options) do |csv|
  		csv << column_names
  		all.each do |generation|
  			csv << generation.attributes.values_at(*column_names)
  	end		
   end

  end

end
