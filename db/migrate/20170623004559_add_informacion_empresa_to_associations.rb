class AddInformacionEmpresaToAssociations < ActiveRecord::Migration[5.0]
  def change
    add_column :associations, :informacion_empresa, :string
  end
end
