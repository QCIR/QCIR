class AddColumnsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :moderator, :boolean
  	add_column :users, :admin, :boolean
  	add_column :users, :age, :date, null: false
  	add_column :users, :name, :string, null: false
  	add_column :users, :username, :string, null: false, unique: true
  end
end
