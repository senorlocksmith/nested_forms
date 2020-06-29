require "application_system_test_case"

class ScriptLocationsTest < ApplicationSystemTestCase
  setup do
    @script_location = script_locations(:one)
  end

  test "visiting the index" do
    visit script_locations_url
    assert_selector "h1", text: "Script Locations"
  end

  test "creating a Script location" do
    visit script_locations_url
    click_on "New Script Location"

    fill_in "Description", with: @script_location.description
    fill_in "Name", with: @script_location.name
    fill_in "Project", with: @script_location.project_id
    fill_in "Setting", with: @script_location.setting
    click_on "Create Script location"

    assert_text "Script location was successfully created"
    click_on "Back"
  end

  test "updating a Script location" do
    visit script_locations_url
    click_on "Edit", match: :first

    fill_in "Description", with: @script_location.description
    fill_in "Name", with: @script_location.name
    fill_in "Project", with: @script_location.project_id
    fill_in "Setting", with: @script_location.setting
    click_on "Update Script location"

    assert_text "Script location was successfully updated"
    click_on "Back"
  end

  test "destroying a Script location" do
    visit script_locations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Script location was successfully destroyed"
  end
end
