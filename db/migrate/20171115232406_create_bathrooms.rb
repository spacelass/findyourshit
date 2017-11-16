class CreateBathrooms < ActiveRecord::Migration[5.1]
  def change
    create_table :bathrooms do |t|
      t.string :name
      t.float :avg_rate
      t.float :avg_clean
      t.float :avg_traffic
      t.string :gender
      t.references :building
      t.references :area

      t.timestamps
    end
  end
end
