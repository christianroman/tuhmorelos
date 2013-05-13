class AddColumNameToHotel < ActiveRecord::Migration
  def change
    add_column :hotels, :video, :string
  end
end
