# README

# Description
Sweater weather, asks the question: should you bring a sweater on your next road trip? 

The goal with this project is to provide the necessary API endpoints and data that a front-end team would need to build out a webpage like the wirefram below: 

<img width="820" alt="Screen Shot 2022-06-15 at 12 56 06 PM" src="https://user-images.githubusercontent.com/26349568/173903767-44956d7a-caf8-48f1-802d-5be6802b2303.png">

# Purpose 
- Exposes API endpoints using a Rails API project based on aggregated data from 3 party external APIs (Open Weather, MapQuest, Pexels)
- Exposes a API endpoints that require an authentication token
- Allows for CRUD functionality with exposed API endpoints

# Setup
- `git clone`
- `bundle`
- `rails db:{create, migrate}`
- `rails s`

# Make a request
GET `http://localhost:3000/api/v1/forecast?location=denver,co`
- Get the current forecast based on a search with query parameter `location`

GET `http://localhost:3000/api/v1/backgrounds?location=denver`
- Get an image based on a search with query parameter `location`

POST `http://localhost:3000/api/v1/users` `body: email, password, password_confirmation`
- Create a user and get an API key in the response. Include email, password and password_confirmation in the request body

POST `http://localhost:3000/api/v1/sessions` `body: email, password`
- Log a user in and get their API key. Include email and password in the request body

POST `http://localhost:3000/api/v1/road_trip` `body: origin, destination, api_key`
- Create a "road trip" with an origin and desitination. Include origin, destination and api_key in the request body

