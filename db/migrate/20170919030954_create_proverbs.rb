class CreateProverbs < ActiveRecord::Migration[5.1]
  def change
    create_table :proverbs do |t|
      t.string :klingon
      t.string :translation
      t.boolean :active

      t.timestamps
    end
  end
end
