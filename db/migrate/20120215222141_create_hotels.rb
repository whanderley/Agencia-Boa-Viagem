class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :nome
      t.string :endereco
      t.string :email
      t.string :telefone
      t.string :site

      t.timestamps
    end
  end
end
