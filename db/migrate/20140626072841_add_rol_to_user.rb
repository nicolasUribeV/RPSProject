class AddRolToUser < ActiveRecord::Migration
  def change
    add_column :users, :roles_mascara, :integer
  end
end
