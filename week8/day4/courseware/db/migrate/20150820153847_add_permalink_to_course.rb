class AddPermalinkToCourse < ActiveRecord::Migration
  def self.up
    add_column :courses, :permalink, :string
    add_index :courses, :permalink
  end
  def self.down
    remove_column :courses, :permalink
  end
end