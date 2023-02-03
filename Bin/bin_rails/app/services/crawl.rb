class Crawl
  include ApiReader
  def initialize
  end

  def search_books(book_name, page)
    list_books(book_name, page)
  end
end
