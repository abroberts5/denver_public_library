require './test/test_helper'
require './lib/author'

class AuthorTest < Minitest::Test
  def test_it_exists
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    assert_instance_of Author, charlotte_bronte
  end

  def test_it_can_add_books
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    assert_equal [], charlotte_bronte.books
    result = charlotte_bronte.add_book("Jane Eyre", "October 16, 1847")
    assert_equal [result], charlotte_bronte.books
    assert_instance_of Book, result
    assert_equal "1847", result.publication_date
    assert_equal "Jane Eyre", result.title
    assert_equal "Charlotte", result.author_first_name
    assert_equal "Bronte", result.author_last_name

    # charlotte_bronte.add_book("Villette", "1853")
    # assert_equal [], charlotte_bronte.books
  end
end
