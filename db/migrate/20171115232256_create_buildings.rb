class CreateBuildings < ActiveRecord::Migration[5.1]
  def change
    create_table :buildings do |t|
      t.string :name
      t.references :area
      t.integer :floors

      t.timestamps
    end
  end
end
