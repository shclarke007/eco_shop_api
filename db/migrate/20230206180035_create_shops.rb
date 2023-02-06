class CreateShops < ActiveRecord::Migration[6.1]
  def change
    create_table :shops do |t|
      t.string :name
      t.text :description
      t.string :phone
      t.string :email
      t.string :website

      t.timestamps
    end
  end
end
