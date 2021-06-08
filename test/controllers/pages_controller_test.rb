require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test 'should get home' do
    get pages_home_url
    assert_response :success
  end

  test 'should get playstation' do
    get pages_playstation_url
    assert_response :success
  end

  test 'should get xbox' do
    get pages_xbox_url
    assert_response :success
  end

  test 'should get nintendo' do
    get pages_nintendo_url
    assert_response :success
  end

  test 'should get gamerpc' do
    get pages_gamerpc_url
    assert_response :success
  end
end
