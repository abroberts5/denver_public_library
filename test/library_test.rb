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

  def test_it_can_add_to_collection
    dpl = Library.new
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.add_book("Jane Eyre", "October 16, 1847")
    villette  = charlotte_bronte.add_book("Villette", "1853")
    harper_lee  = Author.new({first_name: "Harper", last_name: "Lee"})
    mockingbird = harper_lee.add_book("To Kill a Mockingbird", "July 11, 1960")

    dpl.add_to_collection(jane_eyre)
    assert_equal [jane_eyre], dpl.books
    assert_equal true, dpl.include?(jane_eyre)

    dpl.add_to_collection(villette)
    dpl.add_to_collection(harper_lee)
    assert_equal true, dpl.include?(harper_lee)
    assert_equal true, dpl.include?(villette)
  end
end
