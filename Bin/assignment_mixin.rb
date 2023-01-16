require "uri"
require "net/http"
require 'csv'
#require 'byebug'
require 'json'


module ApiReader
  def search_keyword(keyword)
    url = URI("https://api.itbook.store/1.0/search/#{keyword}/1")
    https = Net::HTTP.new(url.host, url.port)
    https.use_ssl = true
    request = Net::HTTP::Get.new(url)
    response = https.request(request)
    data = JSON.parse(response.body)

  end
  def get_book_detail(isbn3)
    url = URI("https://api.itbook.store/1.0/books/#{isbn3}")
    https = Net::HTTP.new(url.host, url.port)
    https.use_ssl = true
    request = Net::HTTP::Get.new(url)
    response = https.request(request)
    data = JSON.parse(response.body)

  end

end

module CsvWriter
  def export_csv(data)
    puts data['books'].first['title']
    CSV.open("file.csv", "wb") do |csv|
      csv << ["title", 'price']
      data['books'].each do |book|
        csv << [book['title'], book['price']]
      end
    end

  end
  def export_book_detail_csv(data)
    CSV.open("file.csv", "wb") do |csv|
      csv << ["title", 'price', 'description']
      data.each do |book|
        csv << [book['title'], book['price'], book['desc']]
      end
    end
  end
end

class Book
  include ApiReader
  include CsvWriter
  def search_books(book_name)
    books = []
    data = search_keyword(book_name)
    data['books'].each do |book|
      isbn = book['isbn13']
      books << get_book_detail(isbn)
      export_book_detail_csv(books)
    end
    #export_csv(data)
  end
end

book = Book.new
book.search_books("ruby")

