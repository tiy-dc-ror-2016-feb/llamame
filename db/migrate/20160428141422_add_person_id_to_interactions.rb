class AddPersonIdToInteractions < ActiveRecord::Migration
  def change
    add_column :interactions, :person_id, :integer
  end
end
