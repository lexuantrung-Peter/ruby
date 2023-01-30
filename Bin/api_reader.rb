require "uri"
require "net/http"
require 'json'

module ApiReader

  def search_keyword(keyword, page)
    url = URI("https://api.itbook.store/1.0/search/#{keyword}/#{page}")
    query(url)
  end

  def get_book_detail(isbn3)
    url = URI("https://api.itbook.store/1.0/books/#{isbn3}")
    data = query(url)
    Book.new(data)
  end

  def query url
    url = URI(url)
    https = Net::HTTP.new(url.host, url.port)
    https.use_ssl = true
    request = Net::HTTP::Get.new(url)
    response = https.request(request)
    JSON.parse(response.body)
  end
end
