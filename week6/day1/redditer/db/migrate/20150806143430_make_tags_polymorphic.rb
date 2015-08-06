class MakeTagsPolymorphic < ActiveRecord::Migration
  def change
    rename_column :taggings, :link_id, :taggable_id
    add_column    :taggings, :taggable_type, :string
  end
end
