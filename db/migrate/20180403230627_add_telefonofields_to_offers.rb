class AddTelefonofieldsToOffers < ActiveRecord::Migration[5.0]
  def change
    add_column :offers, :celular_oferta, :string
    add_column :offers, :telefono_oferta, :string
  end
end
