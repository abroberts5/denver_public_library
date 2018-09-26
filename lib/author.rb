require_relative './book'

class Author
  attr_reader     :books,
                  :author_info

  def initialize(author_hash)
    @first_name   = author_hash[:first_name]
    @last_name    = author_hash[:last_name]
    @author_info  = author_hash
    @books        = []
  end

  def add_book(title, publication_date)
    new_book = Book.new({author_first_name: @first_name,
      author_last_name: @last_name, publication_date: publication_date,
      title: title})
    @books << new_book
    new_book
  end

end
