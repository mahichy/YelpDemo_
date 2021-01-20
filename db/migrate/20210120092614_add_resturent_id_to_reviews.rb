class AddResturentIdToReviews < ActiveRecord::Migration[5.2]
  def change
  	add_column :reviews, :resturent_id, :integer
  end
end
