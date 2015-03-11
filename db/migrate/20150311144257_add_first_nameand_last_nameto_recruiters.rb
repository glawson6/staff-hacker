class AddFirstNameandLastNametoRecruiters < ActiveRecord::Migration
  def change
    add_column :recruiters, :first_name, :string
    add_column :recruiters, :last_name, :string
  end
end
