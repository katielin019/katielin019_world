class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.string :caption
      t.integer :category_id
      t.boolean :active

      t.timestamps
    end
  end
end
