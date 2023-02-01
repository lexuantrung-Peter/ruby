
require 'csv'

class Book

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
end

