class RemoveStringFromCliente < ActiveRecord::Migration
  def up
    remove_column :clientes, :string
      end

  def down
    add_column :clientes, :string, :string
  end
end
