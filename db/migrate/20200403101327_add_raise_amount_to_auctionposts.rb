class AddRaiseAmountToAuctionposts < ActiveRecord::Migration[5.2]
  def change
    add_column :auctionposts, :raise_amount, :integer, :default=>0
  end
end
