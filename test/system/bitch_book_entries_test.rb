require "application_system_test_case"

class BitchBookEntriesTest < ApplicationSystemTestCase
  setup do
    @bitch_book_entry = bitch_book_entries(:one)
  end

  test "visiting the index" do
    visit bitch_book_entries_url
    assert_selector "h1", text: "Bitch Book Entries"
  end

  test "creating a Bitch book entry" do
    visit bitch_book_entries_url
    click_on "New Bitch Book Entry"

    click_on "Create Bitch book entry"

    assert_text "Bitch book entry was successfully created"
    click_on "Back"
  end

  test "updating a Bitch book entry" do
    visit bitch_book_entries_url
    click_on "Edit", match: :first

    click_on "Update Bitch book entry"

    assert_text "Bitch book entry was successfully updated"
    click_on "Back"
  end

  test "destroying a Bitch book entry" do
    visit bitch_book_entries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bitch book entry was successfully destroyed"
  end
end
