class RemovePaperclipFromArea < ActiveRecord::Migration[5.1]
  def change
    remove_attachment :areas, :image
  end
end
