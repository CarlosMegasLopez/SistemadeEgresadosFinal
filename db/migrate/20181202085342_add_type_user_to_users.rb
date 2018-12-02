class AddTypeUserToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :type_user, :integer, default: 0
  end
end
