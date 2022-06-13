class BooksFacade

  def self.get_books(location, quantity)
    book_data = BooksService.get_books(location)
    # book_poro_data = book_data[:docs][1..quantity.to_i]
    Book.new(book_data)
    # require 'pry'; binding.pry
  end
end
