class RemoveNotesFromCompanies < ActiveRecord::Migration
  def change
    remove_column :companies, :notes
  end
end
