class CreateServicos < ActiveRecord::Migration
  def change
    create_table :servicos do |t|
      t.string :titulo
      t.string :descricao

      t.timestamps
    end
  end
end
