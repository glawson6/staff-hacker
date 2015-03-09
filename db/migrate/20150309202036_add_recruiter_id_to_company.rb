class AddRecruiterIdToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :recruiter_id, :integer
  end
end
