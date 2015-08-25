class CreateMessageGroups < ActiveRecord::Migration
  def change
    create_table :message_groups do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
