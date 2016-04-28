class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :email
      t.integer :emailable_id
      t.string :emailable_type

      t.timestamps null: false
    end

    add_index :emails, :emailable_id
  end
end
