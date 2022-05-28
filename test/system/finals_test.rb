require "application_system_test_case"

class FinalsTest < ApplicationSystemTestCase
  setup do
    @final = finals(:one)
  end

  test "visiting the index" do
    visit finals_url
    assert_selector "h1", text: "Finals"
  end

  test "creating a Final" do
    visit finals_url
    click_on "New Final"

    fill_in "Name", with: @final.name
    click_on "Create Final"

    assert_text "Final was successfully created"
    click_on "Back"
  end

  test "updating a Final" do
    visit finals_url
    click_on "Edit", match: :first

    fill_in "Name", with: @final.name
    click_on "Update Final"

    assert_text "Final was successfully updated"
    click_on "Back"
  end

  test "destroying a Final" do
    visit finals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Final was successfully destroyed"
  end
end
