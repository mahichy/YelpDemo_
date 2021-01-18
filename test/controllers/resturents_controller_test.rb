require 'test_helper'

class ResturentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resturent = resturents(:one)
  end

  test "should get index" do
    get resturents_url
    assert_response :success
  end

  test "should get new" do
    get new_resturent_url
    assert_response :success
  end

  test "should create resturent" do
    assert_difference('Resturent.count') do
      post resturents_url, params: { resturent: { address: @resturent.address, name: @resturent.name, phone: @resturent.phone, website: @resturent.website } }
    end

    assert_redirected_to resturent_url(Resturent.last)
  end

  test "should show resturent" do
    get resturent_url(@resturent)
    assert_response :success
  end

  test "should get edit" do
    get edit_resturent_url(@resturent)
    assert_response :success
  end

  test "should update resturent" do
    patch resturent_url(@resturent), params: { resturent: { address: @resturent.address, name: @resturent.name, phone: @resturent.phone, website: @resturent.website } }
    assert_redirected_to resturent_url(@resturent)
  end

  test "should destroy resturent" do
    assert_difference('Resturent.count', -1) do
      delete resturent_url(@resturent)
    end

    assert_redirected_to resturents_url
  end
end
