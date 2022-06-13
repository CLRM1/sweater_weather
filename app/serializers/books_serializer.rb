class BooksSerializer

  def self.format_books_response(forecast, books, location, quantity)
    {
      data:
      {
        id: nil,
        type: 'books',
        attributes: {
          destination: location,
          forecast: {
            summary: forecast.conditions,
            temperature: forecast.temperature
          },
          total_books_found: books.total_books_found,
          books: books.books[:docs][1..quantity.to_i].map {|book|
            {
              isbn: book[:isbn],
              title: book[:title],
              publisher: book[:publisher]
            }}
        }
      }
    }
  end
end
