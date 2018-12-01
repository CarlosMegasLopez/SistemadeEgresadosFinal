class AddMorefieldsToOffers < ActiveRecord::Migration[5.0]
  def change
    add_reference :offers, :user, foreign_key: true
    add_column :offers, :habilidad_oferta, :text
    add_column :offers, :informacion_oferta, :text
  end
end
