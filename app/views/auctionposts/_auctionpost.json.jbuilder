json.extract! auctionpost, :id, :name, :description, :startingbid, :deadline, :contact, :created_at, :updated_at
json.url auctionpost_url(auctionpost, format: :json)
