require 'test_helper'

class BookTest < ActiveSupport::TestCase
  def setup
    @book = Book.new(title: "Rails", author: "Author", number_of_pages: "100",category_id: "1",
    	published_date: "12/1/2012")
  end
 test "should be valid" do
    assert @book.valid?
  end

  test "title should be present" do
    @book.title = "     "
    assert_not @book.valid?
  end

  test "number_of_pages should be present" do
    @book.number_of_pages = "     "
    assert_not @book.valid?
  end

  test "category should be present" do
    @book.category_id = "     "
    assert_not @book.valid?
  end

  test "author should be present" do
    @book.author = "     "
    assert_not @book.valid?
  end

  test "published_date should be present" do
    @book.published_date = "     "
    assert_not @book.valid?
  end


end
