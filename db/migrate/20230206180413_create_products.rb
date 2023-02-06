class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.string :category
      t.belongs_to :shop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
