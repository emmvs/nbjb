require "test_helper"

class BitchBookEntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bitch_book_entry = bitch_book_entries(:one)
  end

  test "should get index" do
    get bitch_book_entries_url
    assert_response :success
  end

  test "should get new" do
    get new_bitch_book_entry_url
    assert_response :success
  end

  test "should create bitch_book_entry" do
    assert_difference('BitchBookEntry.count') do
      post bitch_book_entries_url, params: { bitch_book_entry: {  } }
    end

    assert_redirected_to bitch_book_entry_url(BitchBookEntry.last)
  end

  test "should show bitch_book_entry" do
    get bitch_book_entry_url(@bitch_book_entry)
    assert_response :success
  end

  test "should get edit" do
    get edit_bitch_book_entry_url(@bitch_book_entry)
    assert_response :success
  end

  test "should update bitch_book_entry" do
    patch bitch_book_entry_url(@bitch_book_entry), params: { bitch_book_entry: {  } }
    assert_redirected_to bitch_book_entry_url(@bitch_book_entry)
  end

  test "should destroy bitch_book_entry" do
    assert_difference('BitchBookEntry.count', -1) do
      delete bitch_book_entry_url(@bitch_book_entry)
    end

    assert_redirected_to bitch_book_entries_url
  end
end
