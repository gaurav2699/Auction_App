class AddClaimedToAuctionposts < ActiveRecord::Migration[5.2]
  def change
    add_column :auctionposts, :claimed, :boolean, :default=>false
  end
end
