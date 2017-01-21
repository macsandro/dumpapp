require 'test_helper'

class DumpsitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dumpsite = dumpsites(:one)
  end

  test "should get index" do
    get dumpsites_url
    assert_response :success
  end

  test "should get new" do
    get new_dumpsite_url
    assert_response :success
  end

  test "should create dumpsite" do
    assert_difference('Dumpsite.count') do
      post dumpsites_url, params: { dumpsite: { address: @dumpsite.address, name: @dumpsite.name } }
    end

    assert_redirected_to dumpsite_url(Dumpsite.last)
  end

  test "should show dumpsite" do
    get dumpsite_url(@dumpsite)
    assert_response :success
  end

  test "should get edit" do
    get edit_dumpsite_url(@dumpsite)
    assert_response :success
  end

  test "should update dumpsite" do
    patch dumpsite_url(@dumpsite), params: { dumpsite: { address: @dumpsite.address, name: @dumpsite.name } }
    assert_redirected_to dumpsite_url(@dumpsite)
  end

  test "should destroy dumpsite" do
    assert_difference('Dumpsite.count', -1) do
      delete dumpsite_url(@dumpsite)
    end

    assert_redirected_to dumpsites_url
  end
end
