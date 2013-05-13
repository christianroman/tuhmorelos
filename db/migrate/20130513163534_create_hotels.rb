class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.integer :id
      t.integer :user_id
      t.string :name
      t.string :street
      t.string :district
      t.string :zipcode
      t.integer :destination_id
      t.string :phone
      t.string :website
      t.integer :rate_id
      t.string :image
      t.string :paypal

      t.timestamps
    end
  end
end
