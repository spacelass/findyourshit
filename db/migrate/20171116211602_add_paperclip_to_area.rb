class AddPaperclipToArea < ActiveRecord::Migration[5.1]
  def change
    add_attachment :areas, :image
  end
end
