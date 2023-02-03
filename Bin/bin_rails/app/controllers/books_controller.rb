class BooksController < ApplicationController
  def index
  end

  def load_data
    page = params[:page]
    @results = Crawl.new.search_books("ruby", page)
  end
end
