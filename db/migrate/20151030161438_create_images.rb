class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :name
      t.string :tag_line
      t.attachment :image
      t.references :album
      t.timestamps null: false
    end
  end
end
