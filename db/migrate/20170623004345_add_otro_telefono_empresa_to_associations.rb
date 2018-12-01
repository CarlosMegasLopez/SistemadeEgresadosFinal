class AddOtroTelefonoEmpresaToAssociations < ActiveRecord::Migration[5.0]
  def change
    add_column :associations, :otro_telefono_empresa, :string
  end
end
