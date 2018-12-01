class User < ApplicationRecord
  belongs_to :career
  belongs_to :generation

  has_many :requests, dependent: :destroy
  has_many :offers, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :achievements, dependent: :destroy
  has_many :articles, dependent: :destroy
  has_many :roulettes, dependent: :destroy


  mount_uploader :avatar_user, UserpictureUploader
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


         enum type_user: [:No, :Administrador, :Facultad, :Egresado]


  def nombre_completo_user

	"#{nombre_user} #{apellido_paterno_user} #{apellido_materno_user}"

	end

  def nombre_noticia_user

  "#{nombre_user} #{apellido_paterno_user}"

  end


  def self.to_csv(options = {})

    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |user|
        csv << user.attributes.values_at(*column_names)
    end   
   end

  end

         
end
