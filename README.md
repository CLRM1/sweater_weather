# README

# Purpose and learning goals
- Expose API endpoints using a Rails API project based on aggregated data from 3rd party external APIs
- Expose an API requiring an authentication token
- Allow CRUD functionality with exposed API endpoints
- Research and consume additional APIs as needed


# Setup
- `git clone`
- `bundle`
- `rails db:{create, migrate}`
- `rails s`

# Make a request
GET `http://localhost:3000/api/v1/forecast?location=denver,co`
- Get the current forecast based on a search with query parameter `location`

GET `http://localhost:3000/api/v1/backgrounds?location=denver`
- Get an image based on the location

POST `http://localhost:3000/api/v1/users` `body: email, password, password_confirmation`
- Create a user and get an API key in the response, include email, password and password_confirmation in the request body

POST `http://localhost:3000/api/v1/sessions` `body: email, password`
- Log a user in and get their API key, include email and password in the request body

POST `http://localhost:3000/api/v1/road_trip` `body: origin, destination, api_key`
- Create a "road trip" with a origin and desitination, include origin, destination and api_key in the request body

