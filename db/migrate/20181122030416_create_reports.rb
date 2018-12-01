class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.string :keywords_egresado
      t.string :sexo_egresado
      t.string :correo_electronico_egresado
      t.string :status_egresado
      t.integer :career_id
      t.integer :generation_id
      t.string :matricula_egresado

      t.timestamps
    end
  end
end
