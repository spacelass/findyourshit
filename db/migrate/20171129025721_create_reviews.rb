class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :body
      t.references :bathroom
      t.references :user
      t.integer :rating

      t.timestamps
    end
  end
end
