class BooksFacade

  def self.get_books(location, quantity)
    book_data = BooksService.get_books(location)
    Book.new(book_data)
  end
end
