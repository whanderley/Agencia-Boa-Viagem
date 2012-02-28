class CreateReservas < ActiveRecord::Migration
  def change
    create_table :reservas do |t|
      t.date :data_da_reserva
      t.string :modo_de_pagamento
      t.references :cliente
      t.references :pacote

      t.timestamps
    end
    add_index :reservas, :cliente_id
    add_index :reservas, :pacote_id
  end
end
