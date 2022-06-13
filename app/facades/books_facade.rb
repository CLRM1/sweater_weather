class BooksFacade

  def self.get_books
    book_data = BooksService.get_books(location)
    Book.new(book_data)
  end
end
