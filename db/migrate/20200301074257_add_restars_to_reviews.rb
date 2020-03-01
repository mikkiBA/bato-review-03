class AddRestarsToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :restars, :numeric
  end
end
