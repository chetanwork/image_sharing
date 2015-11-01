class ExtraFieldsToUser < ActiveRecord::Migration
  def change
  	add_column :users, :name, :string
	add_column :users, :mobile, :string
	add_column :users, :address, :text
	add_column :users, :gender, :string
	add_column :users, :admin, :boolean, :default => false
  end
end
