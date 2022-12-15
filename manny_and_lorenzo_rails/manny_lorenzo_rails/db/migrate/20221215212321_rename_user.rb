class RenameUser < ActiveRecord::Migration[7.0]
  def change  
    rename_column :users, :name, :username
    change_column :users, :username, :string, uniqueness: true
  end
end
