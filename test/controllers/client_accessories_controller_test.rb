require 'test_helper'

class ClientAccessoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client_accessory = client_accessories(:one)
  end

  test "should get index" do
    get client_accessories_url
    assert_response :success
  end

  test "should get new" do
    get new_client_accessory_url
    assert_response :success
  end

  test "should create client_accessory" do
    assert_difference('ClientAccessory.count') do
      post client_accessories_url, params: { client_accessory: { accessory_id: @client_accessory.accessory_id, client_record_id: @client_accessory.client_record_id, notes: @client_accessory.notes } }
    end

    assert_redirected_to client_accessory_url(ClientAccessory.last)
  end

  test "should show client_accessory" do
    get client_accessory_url(@client_accessory)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_accessory_url(@client_accessory)
    assert_response :success
  end

  test "should update client_accessory" do
    patch client_accessory_url(@client_accessory), params: { client_accessory: { accessory_id: @client_accessory.accessory_id, client_record_id: @client_accessory.client_record_id, notes: @client_accessory.notes } }
    assert_redirected_to client_accessory_url(@client_accessory)
  end

  test "should destroy client_accessory" do
    assert_difference('ClientAccessory.count', -1) do
      delete client_accessory_url(@client_accessory)
    end

    assert_redirected_to client_accessories_url
  end
end
