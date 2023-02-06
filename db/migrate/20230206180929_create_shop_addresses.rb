class CreateShopAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :shop_addresses do |t|
      t.string :street_name
      t.string :street_number
      t.string :post_code
      t.string :city 
      t.string :building_name
      t.belongs_to :shop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
