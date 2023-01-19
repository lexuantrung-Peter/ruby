module CsvWriter
  
  def export_book_detail_csv(data)
    filename = ARGV[0]
    CSV.open("#{filename}.csv", "wb") do |csv|
      csv << ["title", 'subtitle', 'authors', 'publisher', 'language', 'isbn10', 'isbn13', 'pages', 'year', 'rating', 'desc', 'price', 'image', 'url', 'pdf']
      data.each do |book|
        csv << [book.title, book.subtitle, book.authors, book.publisher, book.language, book.isbn10, book.isbn13, book.pages, book.year, book.rating, book.desc, book.price, book.image, book.url, book.pdf]
      end
    end
  end
end
