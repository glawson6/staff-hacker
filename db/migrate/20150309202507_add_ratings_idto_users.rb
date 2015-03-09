class AddRatingsIdtoUsers < ActiveRecord::Migration
  def change
    add_column :users, :ratings_id, :integer
  end
end
