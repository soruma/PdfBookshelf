require 'test_helper'

class RentalControllerTest < ActionDispatch::IntegrationTest
  test "should get addcart" do
    get rental_addcart_url
    assert_response :success
  end

  test "should get confirmation" do
    get rental_confirmation_url
    assert_response :success
  end

  test "should get destroy" do
    get rental_destroy_url
    assert_response :success
  end

  test "should get index" do
    get rental_index_url
    assert_response :success
  end

  test "should get lets_rental" do
    get rental_lets_rental_url
    assert_response :success
  end

  test "should get show" do
    get rental_show_url
    assert_response :success
  end

end
