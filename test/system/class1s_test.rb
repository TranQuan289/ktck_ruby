require "application_system_test_case"

class Class1sTest < ApplicationSystemTestCase
  setup do
    @class1 = class1s(:one)
  end

  test "visiting the index" do
    visit class1s_url
    assert_selector "h1", text: "Class1s"
  end

  test "should create class1" do
    visit class1s_url
    click_on "New class1"

    click_on "Create Class1"

    assert_text "Class1 was successfully created"
    click_on "Back"
  end

  test "should update Class1" do
    visit class1_url(@class1)
    click_on "Edit this class1", match: :first

    click_on "Update Class1"

    assert_text "Class1 was successfully updated"
    click_on "Back"
  end

  test "should destroy Class1" do
    visit class1_url(@class1)
    click_on "Destroy this class1", match: :first

    assert_text "Class1 was successfully destroyed"
  end
end
