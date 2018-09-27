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

  def find_by_author(author)
    @books.find_all do |book|
      book.author_first_name == author.split(" ").first
    end
  end

  def find_by_publication_date(date)
    @books.find_all do |book|
      book.publication_date == date
    end
  end
end
