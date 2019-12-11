class AddEstreiaToFilmes < ActiveRecord::Migration[5.2]
  def change
    add_column :filmes, :estreia, :date
  end
end
