class CreateAuctionposts < ActiveRecord::Migration[5.2]
  def change
    create_table :auctionposts do |t|
      t.string :name
      t.text :description
      t.integer :startingbid
      t.date :deadline
      t.integer :contact, :limit=>8

      t.timestamps
    end
  end
end
