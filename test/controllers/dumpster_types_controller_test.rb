require 'test_helper'

class DumpsterTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dumpster_type = dumpster_types(:one)
  end

  test "should get index" do
    get dumpster_types_url
    assert_response :success
  end

  test "should get new" do
    get new_dumpster_type_url
    assert_response :success
  end

  test "should create dumpster_type" do
    assert_difference('DumpsterType.count') do
      post dumpster_types_url, params: { dumpster_type: { name: @dumpster_type.name } }
    end

    assert_redirected_to dumpster_type_url(DumpsterType.last)
  end

  test "should show dumpster_type" do
    get dumpster_type_url(@dumpster_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_dumpster_type_url(@dumpster_type)
    assert_response :success
  end

  test "should update dumpster_type" do
    patch dumpster_type_url(@dumpster_type), params: { dumpster_type: { name: @dumpster_type.name } }
    assert_redirected_to dumpster_type_url(@dumpster_type)
  end

  test "should destroy dumpster_type" do
    assert_difference('DumpsterType.count', -1) do
      delete dumpster_type_url(@dumpster_type)
    end

    assert_redirected_to dumpster_types_url
  end
end
