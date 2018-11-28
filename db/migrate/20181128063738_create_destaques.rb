class CreateDestaques < ActiveRecord::Migration[5.2]
  def change
    create_table :destaques do |t|
      t.string :titulo
      t.string :imagem

      t.timestamps
    end
  end
end
