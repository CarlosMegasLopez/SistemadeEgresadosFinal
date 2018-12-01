class AddCarreraToSearches < ActiveRecord::Migration[5.0]
  def change
    add_column :searches, :career_id, :integer
  end
end
