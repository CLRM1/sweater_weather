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
    get '/api/v1/book-search?location=denver,co&quantity=5'

    body = JSON.parse(response.body, symbolize_names: true)
    response = body[:data]

    expect(response).to be_a(Hash)
    expect(response[:type]).to eq('books')
    expect(response[:id]).to eq(nil)
    expect(response[:attributes]).to be_a(Hash)
    expect(response[:attributes][:destination]).to be_a(String)
    expect(response[:attributes][:forecast]).to be_a(Hash)
    expect(response[:attributes][:forecast][:summary]).to be_a(String)
    expect(response[:attributes][:forecast][:temperature]).to be_a(Float)
    expect(response[:attributes][:total_books_found]).to be_a(Integer)
    expect(response[:attributes][:books]).to be_a(Array)
    expect(response[:attributes][:books][0][:isbn]).to be_a(Array)
    expect(response[:attributes][:books][0][:title]).to be_a(String)
    expect(response[:attributes][:books][0][:publisher]).to be_a(Array)
    expect(response[:attributes][:books][0][:publisher][0]).to be_a(String)
  end
  it 'returns an error when the quantity is negative' do
    get '/api/v1/book-search?location=denver,co&quantity=-5'

    body = JSON.parse(response.body, symbolize_names: true)
    response = body[:data]

    expect(response).to eq(400)
  end
end
