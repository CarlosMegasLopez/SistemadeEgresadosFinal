class CreateOffers < ActiveRecord::Migration[5.0]
  def change
    create_table :offers do |t|
      t.string :empresa_oferta
      t.string :vacante_oferta
      t.string :puesto_oferta
      t.string :sexo_oferta
      t.string :edad_oferta
      t.text :experiencia_oferta
      t.text :horario_oferta
      t.text :sueldo_oferta
      t.string :contacto_oferta
      t.string :email_oferta

      t.timestamps
    end
  end
end
