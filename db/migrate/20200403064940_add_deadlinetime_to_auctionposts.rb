class AddDeadlinetimeToAuctionposts < ActiveRecord::Migration[5.2]
  def change
    add_column :auctionposts, :deadlinetime, :datetime
  end
end
