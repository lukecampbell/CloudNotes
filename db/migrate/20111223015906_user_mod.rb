class UserMod < ActiveRecord::Migration
  def up
     remove_column :users, :username
     remove_column :users, :email
     add_column :users, :email, :string, :null=>false
  end

  def down
     add_column :users, :username, :null => false
  end
end
