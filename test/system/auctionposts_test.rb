require "application_system_test_case"

class AuctionpostsTest < ApplicationSystemTestCase
  setup do
    @auctionpost = auctionposts(:one)
  end

  test "visiting the index" do
    visit auctionposts_url
    assert_selector "h1", text: "Auctionposts"
  end

  test "creating a Auctionpost" do
    visit auctionposts_url
    click_on "New Auctionpost"

    fill_in "Contact", with: @auctionpost.contact
    fill_in "Deadline", with: @auctionpost.deadline
    fill_in "Description", with: @auctionpost.description
    fill_in "Name", with: @auctionpost.name
    fill_in "Startingbid", with: @auctionpost.startingbid
    click_on "Create Auctionpost"

    assert_text "Auctionpost was successfully created"
    click_on "Back"
  end

  test "updating a Auctionpost" do
    visit auctionposts_url
    click_on "Edit", match: :first

    fill_in "Contact", with: @auctionpost.contact
    fill_in "Deadline", with: @auctionpost.deadline
    fill_in "Description", with: @auctionpost.description
    fill_in "Name", with: @auctionpost.name
    fill_in "Startingbid", with: @auctionpost.startingbid
    click_on "Update Auctionpost"

    assert_text "Auctionpost was successfully updated"
    click_on "Back"
  end

  test "destroying a Auctionpost" do
    visit auctionposts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Auctionpost was successfully destroyed"
  end
end
