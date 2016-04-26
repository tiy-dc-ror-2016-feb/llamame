class AddIsABossToUsers < ActiveRecord::Migration
  def change
    add_column :users, :is_a_boss, :boolean
  end
end
