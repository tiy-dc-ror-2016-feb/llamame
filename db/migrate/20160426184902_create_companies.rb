class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.text :notes
      t.string :salesperson

      t.timestamps null: false
    end
  end
end
