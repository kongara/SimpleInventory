class CreateMerchants < ActiveRecord::Migration
  def self.up
    create_table :merchants do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.string :website
      t.string :tags

      t.timestamps
    end
  end

  def self.down
    drop_table :merchants
  end
end
