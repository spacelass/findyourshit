class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :rate
      t.integer :clean
      t.integer :traffic
      t.string :content
      t.references :bathroom

      t.timestamps
    end
  end
end
