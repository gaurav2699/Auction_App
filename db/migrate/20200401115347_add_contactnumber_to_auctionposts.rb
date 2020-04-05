class AddContactnumberToAuctionposts < ActiveRecord::Migration[5.2]
  def change
    add_column :auctionposts, :contactnumber, :integer, :limit=>8
  end
end
