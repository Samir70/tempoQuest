require "application_system_test_case"

class StudiesTest < ApplicationSystemTestCase
  setup do
    @study = studies(:one)
  end

  test "visiting the index" do
    visit studies_url
    assert_selector "h1", text: "Studies"
  end

  test "should create study" do
    visit studies_url
    click_on "New study"

    fill_in "Backingtrack", with: @study.backingTrack
    fill_in "Content", with: @study.content
    fill_in "Curtempo", with: @study.curTempo
    fill_in "Practisestyle", with: @study.practiseStyle_id
    fill_in "Targettempo", with: @study.targetTempo
    fill_in "Title", with: @study.title
    click_on "Create Study"

    assert_text "Study was successfully created"
    click_on "Back"
  end

  test "should update Study" do
    visit study_url(@study)
    click_on "Edit this study", match: :first

    fill_in "Backingtrack", with: @study.backingTrack
    fill_in "Content", with: @study.content
    fill_in "Curtempo", with: @study.curTempo
    fill_in "Practisestyle", with: @study.practiseStyle_id
    fill_in "Targettempo", with: @study.targetTempo
    fill_in "Title", with: @study.title
    click_on "Update Study"

    assert_text "Study was successfully updated"
    click_on "Back"
  end

  test "should destroy Study" do
    visit study_url(@study)
    click_on "Destroy this study", match: :first

    assert_text "Study was successfully destroyed"
  end
end
