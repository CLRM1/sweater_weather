class Book
  attr_reader :books, :total_books_found
  def initialize(book_data)
    @total_books_found = book_data[:numFound]
    @books = book_data[:docs][1..5]
  end
end
# @isbn_0 = @books[0][:isbn]
# @isbn_1= @books[1][:isbn]
# @isbn_2 = @books[2][:isbn]
# @isbn_3 = @books[3][:isbn]
# @isbn_4 = @books[4][:isbn]
# @title_0 = @books[0][:title]
# @title_1 = @books[1][:title]
# @title_2 = @books[2][:title]
# @title_3 = @books[3][:title]
# @title_4 = @books[4][:title]
# @publisher_1 = @books[1][:publisher]
# @publisher_2 = @books[2][:publisher]
# @publisher_3 = @books[3][:publisher]
# @publisher_4 = @books[4][:publisher]

# :isbn_0,
# :isbn_1,
# :isbn_2,
# :isbn_3,
# :isbn_4,
# :title_0,
# :title_1,
# :title_2,
# :title_3,
# :title_4,
# :publisher_1,
# :publisher_2,
# :publisher_3,
# :publisher_4,
