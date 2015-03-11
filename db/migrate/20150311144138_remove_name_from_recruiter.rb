class RemoveNameFromRecruiter < ActiveRecord::Migration
  def change
    remove_column :recruiters, :name, :string
  end
end
