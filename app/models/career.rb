class Career < ApplicationRecord
	has_many :generations, dependent: :destroy
	has_many :graduates, dependent: :destroy

  has_many :users, dependent: :destroy

  mount_uploader :imagen_carrera, PictureUploader

	validates :descripcion_carrera, presence: { message: "Este campo no puede estar vacío"}
  validates :descripcion_carrera, uniqueness: { message: "Este registro ya existe"}

  def self.to_csv(options = {})

  	CSV.generate(options) do |csv|
  		csv << column_names
  		all.each do |career|
  			csv << career.attributes.values_at(*column_names)
  	end		
   end

  end


end
