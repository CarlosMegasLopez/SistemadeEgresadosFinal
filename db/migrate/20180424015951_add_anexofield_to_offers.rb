class AddAnexofieldToOffers < ActiveRecord::Migration[5.0]
  def change
    add_column :offers, :anexo_oferta, :string
  end
end
