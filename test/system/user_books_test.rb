require "application_system_test_case"

class UserBooksTest < ApplicationSystemTestCase
  setup do
    @user_book = user_books(:one)
  end

  test "visiting the index" do
    visit user_books_url
    assert_selector "h1", text: "User Books"
  end

  test "creating a User book" do
    visit user_books_url
    click_on "New User Book"

    fill_in "Book", with: @user_book.book_id
    fill_in "Favorite", with: @user_book.favorite
    fill_in "Read", with: @user_book.read
    fill_in "Reading", with: @user_book.reading
    fill_in "Request", with: @user_book.request
    fill_in "User", with: @user_book.user_id
    click_on "Create User book"

    assert_text "User book was successfully created"
    click_on "Back"
  end

  test "updating a User book" do
    visit user_books_url
    click_on "Edit", match: :first

    fill_in "Book", with: @user_book.book_id
    fill_in "Favorite", with: @user_book.favorite
    fill_in "Read", with: @user_book.read
    fill_in "Reading", with: @user_book.reading
    fill_in "Request", with: @user_book.request
    fill_in "User", with: @user_book.user_id
    click_on "Update User book"

    assert_text "User book was successfully updated"
    click_on "Back"
  end

  test "destroying a User book" do
    visit user_books_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User book was successfully destroyed"
  end
end
