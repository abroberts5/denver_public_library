require './test/test_helper'

class LibraryTest < Minitest::Test
  def test_it_exists
    dpl = Library.new
    assert_instance_of Library, dpl
  end

  def test_books_method_starts_empty
    dpl = Library.new
    assert_equal [], dpl.books
  end
end
