class RemoveAreaIdFromBuilding < ActiveRecord::Migration[5.1]
  def change
    remove_column :buildings, :area_id, :integer
  end
end
