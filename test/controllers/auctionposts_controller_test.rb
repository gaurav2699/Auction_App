require 'test_helper'

class AuctionpostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @auctionpost = auctionposts(:one)
  end

  test "should get index" do
    get auctionposts_url
    assert_response :success
  end

  test "should get new" do
    get new_auctionpost_url
    assert_response :success
  end

  test "should create auctionpost" do
    assert_difference('Auctionpost.count') do
      post auctionposts_url, params: { auctionpost: { contact: @auctionpost.contact, deadline: @auctionpost.deadline, description: @auctionpost.description, name: @auctionpost.name, startingbid: @auctionpost.startingbid } }
    end

    assert_redirected_to auctionpost_url(Auctionpost.last)
  end

  test "should show auctionpost" do
    get auctionpost_url(@auctionpost)
    assert_response :success
  end

  test "should get edit" do
    get edit_auctionpost_url(@auctionpost)
    assert_response :success
  end

  test "should update auctionpost" do
    patch auctionpost_url(@auctionpost), params: { auctionpost: { contact: @auctionpost.contact, deadline: @auctionpost.deadline, description: @auctionpost.description, name: @auctionpost.name, startingbid: @auctionpost.startingbid } }
    assert_redirected_to auctionpost_url(@auctionpost)
  end

  test "should destroy auctionpost" do
    assert_difference('Auctionpost.count', -1) do
      delete auctionpost_url(@auctionpost)
    end

    assert_redirected_to auctionposts_url
  end
end
