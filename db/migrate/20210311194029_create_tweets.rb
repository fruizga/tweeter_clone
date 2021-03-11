class CreateTweets < ActiveRecord::Migration[6.1]
  def change
    create_table :tweets do |t|
      t.string :tweeet

      t.timestamps
    end
  end
end
