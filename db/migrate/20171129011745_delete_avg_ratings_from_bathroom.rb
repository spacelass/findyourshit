class DeleteAvgRatingsFromBathroom < ActiveRecord::Migration[5.1]
  def change
    remove_column :bathrooms, :avg_rate
    remove_column :bathrooms, :avg_clean
    remove_column :bathrooms, :avg_traffic
  end
end
