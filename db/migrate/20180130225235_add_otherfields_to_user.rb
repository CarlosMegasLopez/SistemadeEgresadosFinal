class AddOtherfieldsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :matricula_user, :string
    add_column :users, :externa_user, :string
    add_column :users, :cumpleanos_user, :string
    add_column :users, :nacimiento_user, :string
    add_column :users, :nacionalidad_user, :string
    add_column :users, :curp_user, :string
    add_column :users, :sexo_user, :string
    add_column :users, :estado_civil_user, :string
    add_column :users, :hijos_user, :string
    add_column :users, :rfc_user, :string
    add_column :users, :promedio_user, :string
    add_column :users, :status_user, :string
    add_column :users, :nivel_user, :string
    add_column :users, :calle_user, :text
    add_column :users, :interior_user, :string
    add_column :users, :referencia_user, :text
    add_column :users, :colonia_user, :text
    add_column :users, :codigo_postal_user, :string
    add_column :users, :trabajo_user, :text
    add_column :users, :puesto_user, :string
    add_column :users, :teltrabajo_user, :string
    add_column :users, :celular_user, :string
    add_column :users, :otro_telefono_user, :string
    add_column :users, :avatar_user, :string
  end
end
