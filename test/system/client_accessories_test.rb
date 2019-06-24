require "application_system_test_case"

class ClientAccessoriesTest < ApplicationSystemTestCase
  setup do
    @client_accessory = client_accessories(:one)
  end

  test "visiting the index" do
    visit client_accessories_url
    assert_selector "h1", text: "Client Accessories"
  end

  test "creating a Client accessory" do
    visit client_accessories_url
    click_on "New Client Accessory"

    fill_in "Accessory", with: @client_accessory.accessory_id
    fill_in "Client record", with: @client_accessory.client_record_id
    fill_in "Notes", with: @client_accessory.notes
    click_on "Create Client accessory"

    assert_text "Client accessory was successfully created"
    click_on "Back"
  end

  test "updating a Client accessory" do
    visit client_accessories_url
    click_on "Edit", match: :first

    fill_in "Accessory", with: @client_accessory.accessory_id
    fill_in "Client record", with: @client_accessory.client_record_id
    fill_in "Notes", with: @client_accessory.notes
    click_on "Update Client accessory"

    assert_text "Client accessory was successfully updated"
    click_on "Back"
  end

  test "destroying a Client accessory" do
    visit client_accessories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Client accessory was successfully destroyed"
  end
end
