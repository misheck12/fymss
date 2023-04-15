require "application_system_test_case"

class AssigneesTest < ApplicationSystemTestCase
  setup do
    @assignee = assignees(:one)
  end

  test "visiting the index" do
    visit assignees_url
    assert_selector "h1", text: "Assignees"
  end

  test "should create assignee" do
    visit assignees_url
    click_on "New assignee"

    fill_in "Email", with: @assignee.email
    fill_in "Name", with: @assignee.name
    fill_in "Password digest", with: @assignee.password_digest
    click_on "Create Assignee"

    assert_text "Assignee was successfully created"
    click_on "Back"
  end

  test "should update Assignee" do
    visit assignee_url(@assignee)
    click_on "Edit this assignee", match: :first

    fill_in "Email", with: @assignee.email
    fill_in "Name", with: @assignee.name
    fill_in "Password digest", with: @assignee.password_digest
    click_on "Update Assignee"

    assert_text "Assignee was successfully updated"
    click_on "Back"
  end

  test "should destroy Assignee" do
    visit assignee_url(@assignee)
    click_on "Destroy this assignee", match: :first

    assert_text "Assignee was successfully destroyed"
  end
end
