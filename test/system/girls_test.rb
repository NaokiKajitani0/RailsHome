require "application_system_test_case"

class GirlsTest < ApplicationSystemTestCase
  setup do
    @girl = girls(:one)
  end

  test "visiting the index" do
    visit girls_url
    assert_selector "h1", text: "Girls"
  end

  test "should create girl" do
    visit girls_url
    click_on "New girl"

    fill_in "Content", with: @girl.content
    fill_in "Name", with: @girl.name
    click_on "Create Girl"

    assert_text "Girl was successfully created"
    click_on "Back"
  end

  test "should update Girl" do
    visit girl_url(@girl)
    click_on "Edit this girl", match: :first

    fill_in "Content", with: @girl.content
    fill_in "Name", with: @girl.name
    click_on "Update Girl"

    assert_text "Girl was successfully updated"
    click_on "Back"
  end

  test "should destroy Girl" do
    visit girl_url(@girl)
    click_on "Destroy this girl", match: :first

    assert_text "Girl was successfully destroyed"
  end
end
