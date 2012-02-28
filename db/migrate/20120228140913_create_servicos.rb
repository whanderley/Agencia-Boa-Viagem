class CreateServicos < ActiveRecord::Migration
  def change
    drop_table :servicos
    create_table :servicos do |t|
      t.string :titulo
      t.string :descricao

      t.timestamps
    end
  end
end
