class AddFloorToBathroom < ActiveRecord::Migration[5.1]
  def change
    add_column :bathrooms, :floor, :integer
  end
end
