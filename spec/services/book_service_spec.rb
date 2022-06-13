require 'rails_helper'

RSpec.describe 'Books Service' do
  it 'returns the books from open library' do
    location = 'Denver,CO'

    books = BooksService.get_books('denver,co')

    expect(books).to be_a(Hash)
    expect(books[:numFound]).to eq(37)
    expect(books[:docs]).to be_a(Array)
  end
end
