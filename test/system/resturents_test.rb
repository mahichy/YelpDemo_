require "application_system_test_case"

class ResturentsTest < ApplicationSystemTestCase
  setup do
    @resturent = resturents(:one)
  end

  test "visiting the index" do
    visit resturents_url
    assert_selector "h1", text: "Resturents"
  end

  test "creating a Resturent" do
    visit resturents_url
    click_on "New Resturent"

    fill_in "Address", with: @resturent.address
    fill_in "Name", with: @resturent.name
    fill_in "Phone", with: @resturent.phone
    fill_in "Website", with: @resturent.website
    click_on "Create Resturent"

    assert_text "Resturent was successfully created"
    click_on "Back"
  end

  test "updating a Resturent" do
    visit resturents_url
    click_on "Edit", match: :first

    fill_in "Address", with: @resturent.address
    fill_in "Name", with: @resturent.name
    fill_in "Phone", with: @resturent.phone
    fill_in "Website", with: @resturent.website
    click_on "Update Resturent"

    assert_text "Resturent was successfully updated"
    click_on "Back"
  end

  test "destroying a Resturent" do
    visit resturents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Resturent was successfully destroyed"
  end
end
