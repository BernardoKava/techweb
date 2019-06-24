require 'test_helper'

class ServerAccessoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @server_accessory = server_accessories(:one)
  end

  test "should get index" do
    get server_accessories_url
    assert_response :success
  end

  test "should get new" do
    get new_server_accessory_url
    assert_response :success
  end

  test "should create server_accessory" do
    assert_difference('ServerAccessory.count') do
      post server_accessories_url, params: { server_accessory: { accessory_id: @server_accessory.accessory_id, notes: @server_accessory.notes } }
    end

    assert_redirected_to server_accessory_url(ServerAccessory.last)
  end

  test "should show server_accessory" do
    get server_accessory_url(@server_accessory)
    assert_response :success
  end

  test "should get edit" do
    get edit_server_accessory_url(@server_accessory)
    assert_response :success
  end

  test "should update server_accessory" do
    patch server_accessory_url(@server_accessory), params: { server_accessory: { accessory_id: @server_accessory.accessory_id, notes: @server_accessory.notes } }
    assert_redirected_to server_accessory_url(@server_accessory)
  end

  test "should destroy server_accessory" do
    assert_difference('ServerAccessory.count', -1) do
      delete server_accessory_url(@server_accessory)
    end

    assert_redirected_to server_accessories_url
  end
end
