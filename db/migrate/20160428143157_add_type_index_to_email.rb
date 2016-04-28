class AddTypeIndexToEmail < ActiveRecord::Migration
  def change
    add_index :emails, :emailable_type
  end
end
