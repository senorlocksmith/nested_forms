require 'test_helper'

class ScriptLocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @script_location = script_locations(:one)
  end

  test "should get index" do
    get script_locations_url
    assert_response :success
  end

  test "should get new" do
    get new_script_location_url
    assert_response :success
  end

  test "should create script_location" do
    assert_difference('ScriptLocation.count') do
      post script_locations_url, params: { script_location: { description: @script_location.description, name: @script_location.name, project_id: @script_location.project_id, setting: @script_location.setting } }
    end

    assert_redirected_to script_location_url(ScriptLocation.last)
  end

  test "should show script_location" do
    get script_location_url(@script_location)
    assert_response :success
  end

  test "should get edit" do
    get edit_script_location_url(@script_location)
    assert_response :success
  end

  test "should update script_location" do
    patch script_location_url(@script_location), params: { script_location: { description: @script_location.description, name: @script_location.name, project_id: @script_location.project_id, setting: @script_location.setting } }
    assert_redirected_to script_location_url(@script_location)
  end

  test "should destroy script_location" do
    assert_difference('ScriptLocation.count', -1) do
      delete script_location_url(@script_location)
    end

    assert_redirected_to script_locations_url
  end
end
