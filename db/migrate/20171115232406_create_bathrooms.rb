class CreateBathrooms < ActiveRecord::Migration[5.1]
  def change
    create_table :bathrooms do |t|
      t.string :name
      t.string :gender
      t.references :building
      t.references :area

      t.timestamps
    end
  end
end
