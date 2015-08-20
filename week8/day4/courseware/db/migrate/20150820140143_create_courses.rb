class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.boolean :active
      t.integer :author_id
      t.integer :number_of_chapters
      t.integer :difficulty_level
      t.integer :price

      t.timestamps null: false
    end
  end
end
