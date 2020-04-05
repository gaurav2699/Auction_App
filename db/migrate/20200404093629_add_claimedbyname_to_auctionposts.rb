class AddClaimedbynameToAuctionposts < ActiveRecord::Migration[5.2]
  def change
    add_column :auctionposts, :claimedbyname, :string
  end
end
