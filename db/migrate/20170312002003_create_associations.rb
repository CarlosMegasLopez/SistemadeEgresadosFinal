class CreateAssociations < ActiveRecord::Migration[5.0]
  def change
    create_table :associations do |t|
      t.string :nombre_empresa
      t.string :contacto_empresa
      t.string :telefono_empresa
      t.string :correo_electronico_empresa

      t.timestamps
    end
  end
end
