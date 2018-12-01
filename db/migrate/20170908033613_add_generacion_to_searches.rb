class AddGeneracionToSearches < ActiveRecord::Migration[5.0]
  def change
    add_column :searches, :generation_id, :integer
  end
end
