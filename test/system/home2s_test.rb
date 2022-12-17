require "application_system_test_case"

class Home2sTest < ApplicationSystemTestCase
  setup do
    @home2 = home2s(:one)
  end

  test "visiting the index" do
    visit home2s_url
    assert_selector "h1", text: "Home2s"
  end

  test "should create home2" do
    visit home2s_url
    click_on "New home2"

    click_on "Create Home2"

    assert_text "Home2 was successfully created"
    click_on "Back"
  end

  test "should update Home2" do
    visit home2_url(@home2)
    click_on "Edit this home2", match: :first

    click_on "Update Home2"

    assert_text "Home2 was successfully updated"
    click_on "Back"
  end

  test "should destroy Home2" do
    visit home2_url(@home2)
    click_on "Destroy this home2", match: :first

    assert_text "Home2 was successfully destroyed"
  end
end
