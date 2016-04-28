class AddTypeIndexToPhoneNumber < ActiveRecord::Migration
  def change
    add_index :phone_numbers, :phone_numberable_type
  end
end
