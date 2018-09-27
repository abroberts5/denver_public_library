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
    harper_lee  = Author.new({first_name: "Harper", last_name: "Lee"})
    jane_eyre = charlotte_bronte.add_book("Jane Eyre", "October 16, 1847")
    villette  = charlotte_bronte.add_book("Villette", "1853")
    mockingbird = harper_lee.add_book("To Kill a Mockingbird", "July 11, 1960")

    dpl.add_to_collection(jane_eyre)
    assert_equal [jane_eyre], dpl.books
    assert_equal true, dpl.books.include?(jane_eyre)

    dpl.add_to_collection(villette)
    assert_equal true, dpl.books.include?(villette)
  end

  def test_dpl_includes_book_titles
    dpl = Library.new
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    harper_lee  = Author.new({first_name: "Harper", last_name: "Lee"})
    jane_eyre = charlotte_bronte.add_book("Jane Eyre", "October 16, 1847")
    villette  = charlotte_bronte.add_book("Villette", "1853")
    mockingbird = harper_lee.add_book("To Kill a Mockingbird", "July 11, 1960")

    dpl.add_to_collection(jane_eyre)
    dpl.add_to_collection(villette)
    dpl.add_to_collection(mockingbird)

    assert_equal true, dpl.include?("To Kill a Mockingbird")
    assert_equal false, dpl.include?("A Connecticut Yankee in King Arthur's Court")
  end

  def test_card_catalogue_returns_array_in_alphabetical_order
    dpl = Library.new
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    harper_lee  = Author.new({first_name: "Harper", last_name: "Lee"})
    jane_eyre = charlotte_bronte.add_book("Jane Eyre", "October 16, 1847")
    villette  = charlotte_bronte.add_book("Villette", "1853")
    mockingbird = harper_lee.add_book("To Kill a Mockingbird", "July 11, 1960")

    dpl.add_to_collection(jane_eyre)
    dpl.add_to_collection(villette)
    dpl.add_to_collection(mockingbird)

    assert_equal true, dpl.card_catalogue.include?(jane_eyre)
  end
end
