class AddCurrentbidToAuctionposts < ActiveRecord::Migration[5.2]
  def change
    add_column :auctionposts, :currentbid, :integer,:default=>:startingbid
  end
end
