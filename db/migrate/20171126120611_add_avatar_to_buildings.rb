class AddAvatarToBuildings < ActiveRecord::Migration[5.1]
  def up
     add_attachment :buildings, :avatar
   end

  def down
     remove_attachment :buildings, :avatar
  end
 end
