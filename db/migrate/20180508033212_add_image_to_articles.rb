class AddImageToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :imagen_noticia, :string
  end
end
