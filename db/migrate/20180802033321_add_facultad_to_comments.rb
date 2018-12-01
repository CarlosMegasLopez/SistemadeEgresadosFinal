class AddFacultadToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :facultad, :string
  end
end
