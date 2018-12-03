class CreateComentafilmes < ActiveRecord::Migration[5.2]
  def change
    create_table :comentafilmes do |t|
      t.references :user, foreign_key: true
      t.references :filme, foreign_key: true
      t.string :titulo
      t.text :comentario

      t.timestamps
    end
  end
end
