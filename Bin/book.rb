require './api_reader.rb'
require './csv_writer.rb'
require 'csv'

class Book

  include ApiReader
  include CsvWriter

  attr_reader :title, :subtitle, :authors, :publisher, :language, :isbn10, :isbn13, :pages, :year, :rating, :desc, :price, :image, :url, :pdf

  def initialize( attributes = {} )
    @title = attributes['title']
    @subtitle = attributes['subtitle']
    @authors = attributes['authors']
    @publisher = attributes['publisher']
    @language = attributes['language']
    @isbn10 = attributes['isbn10']
    @isbn13 = attributes['isbn13']
    @pages = attributes['year']
    @rating = attributes['rating']
    @desc = attributes['desc']
    @price = attributes['price']
    @image = attributes['image']
    @url = attributes['url']
    @pdf = attributes['pdf']
  end

  def search_books(book_name)
    page = 1
    books = []
    loop do
      data = search_keyword(book_name, page)
      data['books'].each do |book|
        isbn = book['isbn13']
        books << get_book_detail(isbn)
      end
      if data['books'].empty?
        break
      else
        page += 1
      end
    end
    export_book_detail_csv(books.flatten, book_name)
  end
end

book_name = ARGV[0]
puts "I want to get all books about #{ARGV[0]}"
book = Book.new
book.search_books(book_name)
