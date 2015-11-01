class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.references :user
      t.references :image
      t.timestamps null: false
    end
  end
end
