class CreateGroupings < ActiveRecord::Migration
  def change
    create_table :groupings do |t|
      t.integer :message_id
      t.integer :message_group_id

      t.timestamps null: false
    end
  end
end
