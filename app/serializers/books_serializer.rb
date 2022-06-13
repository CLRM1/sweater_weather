class BooksSerializer

  def self.format_books_response(forecast, books, location)
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
          books: books.books.map {|book|
            {
              isbn: book[:isbn],
              title: book[:title],
              publisher: book[:publisher][0]
            }}
        }
      }
    }
  end
end
