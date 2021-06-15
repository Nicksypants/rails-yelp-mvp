class CreateReveiews < ActiveRecord::Migration[6.1]
  def change
    create_table :reveiews do |t|
      t.integer :rating
      t.text :content
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
