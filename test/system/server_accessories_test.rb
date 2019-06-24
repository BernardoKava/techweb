require "application_system_test_case"

class ServerAccessoriesTest < ApplicationSystemTestCase
  setup do
    @server_accessory = server_accessories(:one)
  end

  test "visiting the index" do
    visit server_accessories_url
    assert_selector "h1", text: "Server Accessories"
  end

  test "creating a Server accessory" do
    visit server_accessories_url
    click_on "New Server Accessory"

    fill_in "Accessory", with: @server_accessory.accessory_id
    fill_in "Notes", with: @server_accessory.notes
    click_on "Create Server accessory"

    assert_text "Server accessory was successfully created"
    click_on "Back"
  end

  test "updating a Server accessory" do
    visit server_accessories_url
    click_on "Edit", match: :first

    fill_in "Accessory", with: @server_accessory.accessory_id
    fill_in "Notes", with: @server_accessory.notes
    click_on "Update Server accessory"

    assert_text "Server accessory was successfully updated"
    click_on "Back"
  end

  test "destroying a Server accessory" do
    visit server_accessories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Server accessory was successfully destroyed"
  end
end
