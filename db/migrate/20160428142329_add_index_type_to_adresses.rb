class AddIndexTypeToAdresses < ActiveRecord::Migration
  def change
    add_index :addresses, :addressable_type
  end
end
