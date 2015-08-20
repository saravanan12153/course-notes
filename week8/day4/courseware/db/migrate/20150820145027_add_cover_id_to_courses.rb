class AddCoverIdToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :cover_id, :string
  end
end
