class RemoveRecruiterIdFromCompanies < ActiveRecord::Migration
  def change
    remove_column :companies, :recruiter_id, :integer
  end
end
