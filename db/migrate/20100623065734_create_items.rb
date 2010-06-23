class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.string :name
      t.float :price
      t.string :currency
      t.string :tags
      t.text :description
      t.integer :rating
      t.integer :number_of_ratings

      t.integer :merchant_id
      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
