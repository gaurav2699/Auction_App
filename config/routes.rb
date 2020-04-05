Rails.application.routes.draw do
  resources :auctionposts
  devise_for :users, controllers: {
registrations: 'registrations'
 }
 #setting routes for each button created.
  match 'auctionposts/:id/bid' => 'auctionposts#bid', :as => :bid, via: :get
  match 'auctionposts/:id/claim' => 'auctionposts#claim', :as => :claim, via: :get
  match 'auctionposts/:id/myposts'=>'auctionposts#myposts',:as => :myposts, via: :get
  match 'auctionposts/:id/myclaims'=>'auctionposts#myclaims',:as => :myclaims, via: :get

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #redirects http://localhost:3000 to the index view under auctionposts
  root to: 'auctionposts#index'
end
