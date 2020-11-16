class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :name
      t.string :category
      t.string :gender
      t.string :description
      t.integer :price_per_night
      t.references :user, null: false, foreign_key: true


      t.timestamps
    end
  end
end
