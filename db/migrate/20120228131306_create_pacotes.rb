class CreatePacotes < ActiveRecord::Migration
  def change
    create_table :pacotes do |t|
      t.string :titulo
      t.string :descricao
      t.float :preco
      t.integer :pontos
      t.integer :pontos_requeridos
      t.references :hotel
      t.references :servico

      t.timestamps
    end
    add_index :pacotes, :hotel_id
    add_index :pacotes, :servico_id
  end
end
