require "test_helper"

class Home2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @home2 = home2s(:one)
  end

  test "should get index" do
    get home2s_url
    assert_response :success
  end

  test "should get new" do
    get new_home2_url
    assert_response :success
  end

  test "should create home2" do
    assert_difference("Home2.count") do
      post home2s_url, params: { home2: {  } }
    end

    assert_redirected_to home2_url(Home2.last)
  end

  test "should show home2" do
    get home2_url(@home2)
    assert_response :success
  end

  test "should get edit" do
    get edit_home2_url(@home2)
    assert_response :success
  end

  test "should update home2" do
    patch home2_url(@home2), params: { home2: {  } }
    assert_redirected_to home2_url(@home2)
  end

  test "should destroy home2" do
    assert_difference("Home2.count", -1) do
      delete home2_url(@home2)
    end

    assert_redirected_to home2s_url
  end
end
