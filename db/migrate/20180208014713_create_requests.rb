class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.references :user, foreign_key: true
      t.text :especialidad_solicitud
      t.text :habilidad_solicitud
      t.text :disponibilidad_solicitud
      t.text :idioma_solicitud
      t.text :ingreso_solicitud
      t.text :informacion_solicitud
      t.string :curriculum_solicitud

      t.timestamps
    end
  end
end
