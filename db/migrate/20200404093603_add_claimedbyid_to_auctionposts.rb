class AddClaimedbyidToAuctionposts < ActiveRecord::Migration[5.2]
  def change
    add_column :auctionposts, :claimedbyid, :integer
  end
end
