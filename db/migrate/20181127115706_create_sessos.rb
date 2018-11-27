class CreateSessos < ActiveRecord::Migration[5.2]
  def change
    create_table :sessos do |t|
      t.string :dia
      t.string :horario
      t.references :cinema, foreign_key: true
      t.references :filme, foreign_key: true

      t.timestamps
    end
  end
end
