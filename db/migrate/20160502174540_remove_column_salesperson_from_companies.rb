class RemoveColumnSalespersonFromCompanies < ActiveRecord::Migration
  def change
    remove_column :companies, :salesperson, :string
    add_column :companies, :user_id, :integer 
  end
end
