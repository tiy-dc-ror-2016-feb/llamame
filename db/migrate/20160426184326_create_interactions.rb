class CreateInteractions < ActiveRecord::Migration
  def change
    create_table :interactions do |t|
      t.string :topic
      t.string :medium
      t.text :details
      t.datetime :follow_up_date

      t.timestamps null: false
    end
  end
end
