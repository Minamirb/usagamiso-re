class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string :twitter_id
      t.integer :team_id
      t.integer :sata

      t.timestamps
    end
  end
end
