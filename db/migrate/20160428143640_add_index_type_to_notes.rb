class AddIndexTypeToNotes < ActiveRecord::Migration
  def change
    add_index :notes, :noteable_type
  end
end
