class Author
  attr_reader     :books,
                  :author_info

  def initialize(author_hash)
    @author_info  = author_hash
    @books        = []
  end

  def add_book(title, publication_date)
    title
  end

end
