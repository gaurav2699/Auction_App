Ruby Version: ruby 2.6.1
# Necessary installation steps
- To install Ruby on Rails, go through the following document
 - https://docs.google.com/document/d/1jW8vD1ziBLZ-ClZ4tpp7PPxH3obzI3Vk3LCAEBQkzkk/edit?usp=sharing

# Complete steps to run the project
1. First clone the repository to your desired location
2. Run the following commands in you teminal:
```
bundle install
rake db:create
rake db:migrate
rails server
```
# List of all implemented features
1. Users can view products that are for auction uploaded by other users.
2. Users can view and bid for a product multiple times before the deadline.
3. Once the deadline for a product is met the user with the highest bid should be given an option to “Claim” the item.
4. Dashboard for users to view all their claimed items.
5. Dashboard for users to view all items which they upload for auction.
6. Items claimed by other users are marked as “Claimed by Mr. XYZ” on this page.

# List of non-implemented/planned features
- all features implemented
# List of all the known bugs
- No known bugs
# References used
- IRIS ROR bootcamp
- https://web-crunch.com/posts/ruby-on-rails-ecommerce-music-shop
