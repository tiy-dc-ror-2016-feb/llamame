class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.text :notes
      t.text :salesperson

      t.timestamps null: false
    end
  end
end
