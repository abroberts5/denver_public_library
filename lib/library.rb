class Library
  attr_reader     :books

  def initialize
    @books     = []
  end

  def add_to_collection(book)
    @books << book
  end

  def include?(title)
    @books.any? do |book|
      book.title == title
    end
  end

  def card_catalogue
    new_list = @books.sort_by do |book|
      book.author_last_name
    end
    new_list
  end
end
