class BooksService

  def self.get_books(location)
    conn = Faraday.new(url: 'https://openlibrary.org/search.json?title=denver,co')

    response = conn.get

    JSON.parse(response.body, symbolize_names: true)
  end
end
