class AddVoteTotalToLinks < ActiveRecord::Migration
  def change
    add_column :links, :vote_total, :integer, :default => 0
  end
end
