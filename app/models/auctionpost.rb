class Auctionpost < ApplicationRecord
  #tells that every post has only one attached image
  has_one_attached :image
  #This will tell rails application that a Post belongs to a user. Each post will have one user referred to.
  belongs_to :user
end
