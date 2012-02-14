class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :cpf
      t.integer :pontos
      t.string :endereco
      t.string :email
      t.string :telefone

      t.timestamps
    end
  end
end
