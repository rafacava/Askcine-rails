class CreateSessaos < ActiveRecord::Migration[5.2]
  def change
    create_table :sessaos do |t|
      t.date :dia
      t.time :horario
      t.boolean :status
      t.references :cinema, foreign_key: true
      t.references :filme, foreign_key: true

      t.timestamps
    end
  end
end
