class Vote < ActiveRecord::Migration
  def up
    remove_column :votes, :twitter_id
  end

  def down
  end
end
