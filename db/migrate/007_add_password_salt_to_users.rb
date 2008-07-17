class AddPasswordSaltToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :hashed_password, :string
    add_column :users, :salt, :string
  end

  def self.down
    remove_column :users, :hashed_password
    remove_column :users, :salt
  end
end
