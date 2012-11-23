class Vote < ActiveRecord::Migration
  def up
     add_column :votes, :user_id, :integer
     remove_column :votes, :twitter_id
  end

  def down
  end
end
