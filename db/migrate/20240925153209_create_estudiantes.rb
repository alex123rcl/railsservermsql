class CreateEstudiantes < ActiveRecord::Migration[7.2]
  def change
    create_table :estudiantes do |t|
      t.string :nombre
      t.string :apellido
      t.string :carrera
      t.string :carnet

      t.timestamps
    end
  end
end
