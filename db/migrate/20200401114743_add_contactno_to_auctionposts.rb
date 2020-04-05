class AddContactnoToAuctionposts < ActiveRecord::Migration[5.2]
  def change
    add_column :auctionposts, :contactno, :integer, :limit=>8
  end
end
