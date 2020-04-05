class AddUserToAuctionposts < ActiveRecord::Migration[5.2]
  def change
    add_reference :auctionposts, :user, foreign_key: true
  end
end
