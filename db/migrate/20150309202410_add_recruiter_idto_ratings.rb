class AddRecruiterIdtoRatings < ActiveRecord::Migration
  def change
    add_column :ratings, :recruiter_id, :integer
  end
end
