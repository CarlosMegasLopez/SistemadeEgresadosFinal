class AddCelularEmpresaToAssociations < ActiveRecord::Migration[5.0]
  def change
    add_column :associations, :celular_empresa, :string
  end
end
