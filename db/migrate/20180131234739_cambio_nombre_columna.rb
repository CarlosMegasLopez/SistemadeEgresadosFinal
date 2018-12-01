class CambioNombreColumna < ActiveRecord::Migration[5.0]
  def self.up
     rename_column :searches, :sexo_egresado, :sexo_user
     rename_column :searches, :correo_electronico_egresado, :email_user
     rename_column :searches, :status_egresado, :status_user
     rename_column :searches, :matricula_egresado, :matricula_user
   end

   def self.down

   end
end
