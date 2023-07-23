require "application_system_test_case"

class PractiseStylesTest < ApplicationSystemTestCase
  setup do
    @practise_style = practise_styles(:one)
  end

  test "visiting the index" do
    visit practise_styles_url
    assert_selector "h1", text: "Practise styles"
  end

  test "should create practise style" do
    visit practise_styles_url
    click_on "New practise style"

    fill_in "Description", with: @practise_style.description
    fill_in "Name", with: @practise_style.name
    click_on "Create Practise style"

    assert_text "Practise style was successfully created"
    click_on "Back"
  end

  test "should update Practise style" do
    visit practise_style_url(@practise_style)
    click_on "Edit this practise style", match: :first

    fill_in "Description", with: @practise_style.description
    fill_in "Name", with: @practise_style.name
    click_on "Update Practise style"

    assert_text "Practise style was successfully updated"
    click_on "Back"
  end

  test "should destroy Practise style" do
    visit practise_style_url(@practise_style)
    click_on "Destroy this practise style", match: :first

    assert_text "Practise style was successfully destroyed"
  end
end
