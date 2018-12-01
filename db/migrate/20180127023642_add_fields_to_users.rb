class AddFieldsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :career_id, :integer
    add_column :users, :generation_id, :integer
    add_column :users, :nombre_user, :string
    add_column :users, :apellido_paterno_user, :string
    add_column :users, :apellido_materno_user, :string
  end
end
