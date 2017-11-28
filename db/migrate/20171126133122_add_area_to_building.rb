class AddAreaToBuilding < ActiveRecord::Migration[5.1]
  def change
    add_reference :buildings, :area, foreign_key: true
  end
end
