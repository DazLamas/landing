class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|

      t.integer :participant_id
      t.string :friend_name
      t.string :friend_email

      t.timestamps
    end
  end
end
