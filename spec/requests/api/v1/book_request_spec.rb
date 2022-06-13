require 'rails_helper'

RSpec.describe 'Book API' do


#   Your endpoint should follow this format:
# GET /api/v1/book-search?location=denver,co&quantity=5
# please do not deviate from the names of the endpoint or query parameter, be sure it is called “book-search” and “location” and “quantity”, respectively
# **quantity should be a positive integer greater than 0
# Your API will return:
# the destination city
# the forecast in that city right now
# the total number of search results found
# a quantity of books about the destination city
  it 'returns books based on a destination city and quantity' do
    get '/api/v1/book-search?location=denver,co&quantity=5'

    body = JSON.parse(response.body, symbolize_names: true)
    books = body[:data][:attributes][:books]

    expect(response).to be_successful

    expect(books.count).to eq(5)
  end

  it 'returns books in the correct JSON format' do

    body = JSON.parse(response.body, symbolize_names: true)
    books = body[:data][:attributes][:books]

    expect(books[:data]).to be_a(Hash)
    expect(books[:type]).to eq('books')
    expect(books[:attributes]).to be_a(Hash)
    expect(books[:attributes][:destination]).to be_a(String)
    expect(books[:attributes][:forecast]).to be_a(Hash)
    expect(books[:attributes][:forecast][:summary]).to be_a(String)
    expect(books[:attributes][:forecast][:temperature]).to be_a(String)
    expect(books[:attributes][:total_books_found]).to be_a(Integer)
    expect(books[:attributes][:books]).to be_a(Array)
    expect(books[:attributes][:books][0][:isbn]).to be_a(Array)
    expect(books[:attributes][:books][0][:title]).to be_a(String)
    expect(books[:attributes][:books][0][:publisher]).to be_a(Array)
    expect(books[:attributes][:books][0][:publisher][0]).to be_a(String)
  end
  # it 'returns an error when the quantity is negative' do
  #
  # end
end


# {
#   "data": {
#     "id": "null",
#     "type": "books",
#     "attributes": {
#       "destination": "denver,co",
#       "forecast": {
#         "summary": "Cloudy with a chance of meatballs",
#         "temperature": "83 F"
#       },
#       "total_books_found": 172,
#       "books": [
#         {
#           "isbn": [
#             "0762507845",
#             "9780762507849"
#           ],
#           "title": "Denver, Co",
#           "publisher": [
#             "Universal Map Enterprises"
#           ]
#         },
#         {
#           "isbn": [
#             "9780883183663",
#             "0883183668"
#           ],
#           "title": "Photovoltaic safety, Denver, CO, 1988",
#           "publisher": [
#             "American Institute of Physics"
#           ]
#         },
#         { ... same format for books 3, 4 and 5 ... }
#       ]
#     }
#   }
# }
