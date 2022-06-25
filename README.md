# README

# Description
Sweater weather, asks the question: should you bring a sweater on your next road trip? 

The goal with this project is to provide the necessary API endpoints and data that a front-end team would need to build out a webpage like the wireframe below: 

<img width="820" alt="Screen Shot 2022-06-15 at 12 56 06 PM" src="https://user-images.githubusercontent.com/26349568/173903767-44956d7a-caf8-48f1-802d-5be6802b2303.png">

# Purpose 
- Exposes API endpoints using a Rails API project based on aggregated data from 3 external APIs (Open Weather, MapQuest, Pexels)
- Exposes API endpoints that require an authentication token
- Allows for CRUD functionality with exposed API endpoints

# Setup
Get api keys from the folllowing providers: 
- [MapQuest](https://developer.mapquest.com), [Open Weather](https://openweathermap.org/api), [Pexels](https://www.pexels.com/api/)

Setup up the repo locally
- `git clone`
- `cd sweater_weather`
- `bundle`
- `rails db:{create, migrate}`
- `bundle exec figaro install`
- `cd config` open the application.yml file and add your API keys as environment variables: 
- mapquest_api_key: 'key_here', open_weather_api...pexel_api_key...
- `rails s` to start the server on localhost:3000

# Make a request
GET `http://localhost:3000/api/v1/forecast?location=denver,co`
- Get the current forecast based on a search with query parameter `location`
- Example response: 
``` json
{
    "data": {
        "id": null,
        "type": "forecast",
        "attributes": {
            "current_weather": {
                "datetime": "2022-06-25T09:40:57-06:00",
                "sunrise": "2022-06-25T05:33:12-06:00",
                "sunset": "2022-06-25T20:31:51-06:00",
                "temperature": 54.95,
                "feels_like": 53.58,
                "humidity": 73.0,
                "uvi": 2.14,
                "visibility": 10000.0,
                "conditions": "overcast clouds",
                "icon": "04d"
            },
            "daily_weather": [
                {
                    "date": "2022-06-25T13:00:00-06:00",
                    "sunrise": "2022-06-25T13:00:00-06:00",
                    "sunset": "2022-06-25T13:00:00-06:00",
                    "max_temp": 72.68,
                    "min_temp": 54.95,
                    "conditions": "moderate rain",
                    "icon": "10d"
                },
                {
                    "date": "2022-06-26T13:00:00-06:00",
                    "sunrise": "2022-06-26T13:00:00-06:00",
                    "sunset": "2022-06-26T13:00:00-06:00",
                    "max_temp": 66.2,
                    "min_temp": 55.31,
                    "conditions": "light rain",
                    "icon": "10d"
                },
                {
                    "date": "2022-06-27T13:00:00-06:00",
                    "sunrise": "2022-06-27T13:00:00-06:00",
                    "sunset": "2022-06-27T13:00:00-06:00",
                    "max_temp": 86.58,
                    "min_temp": 58.24,
                    "conditions": "light rain",
                    "icon": "10d"
                },
                {
                    "date": "2022-06-28T13:00:00-06:00",
                    "sunrise": "2022-06-28T13:00:00-06:00",
                    "sunset": "2022-06-28T13:00:00-06:00",
                    "max_temp": 91.78,
                    "min_temp": 63.45,
                    "conditions": "light rain",
                    "icon": "10d"
                },
                {
                    "date": "2022-06-29T13:00:00-06:00",
                    "sunrise": "2022-06-29T13:00:00-06:00",
                    "sunset": "2022-06-29T13:00:00-06:00",
                    "max_temp": 93.42,
                    "min_temp": 67.84,
                    "conditions": "light rain",
                    "icon": "10d"
                }
            ],
            "hourly_weather": [
                {
                    "time": "2022-06-25T09:00:00-06:00",
                    "temperature": 55.58,
                    "conditions": "overcast clouds",
                    "icon": "04d"
                },
                {
                    "time": "2022-06-25T10:00:00-06:00",
                    "temperature": 54.95,
                    "conditions": "overcast clouds",
                    "icon": "04d"
                },
                {
                    "time": "2022-06-25T11:00:00-06:00",
                    "temperature": 56.05,
                    "conditions": "overcast clouds",
                    "icon": "04d"
                },
                {
                    "time": "2022-06-25T12:00:00-06:00",
                    "temperature": 59.38,
                    "conditions": "overcast clouds",
                    "icon": "04d"
                },
                {
                    "time": "2022-06-25T13:00:00-06:00",
                    "temperature": 63.27,
                    "conditions": "overcast clouds",
                    "icon": "04d"
                },
                {
                    "time": "2022-06-25T14:00:00-06:00",
                    "temperature": 68.63,
                    "conditions": "overcast clouds",
                    "icon": "04d"
                },
                {
                    "time": "2022-06-25T15:00:00-06:00",
                    "temperature": 72.68,
                    "conditions": "overcast clouds",
                    "icon": "04d"
                },
                {
                    "time": "2022-06-25T16:00:00-06:00",
                    "temperature": 66.25,
                    "conditions": "moderate rain",
                    "icon": "10d"
                }
            ]
        }
    }
}
```

GET `http://localhost:3000/api/v1/backgrounds?location=denver`
- Get an image based on a search with query parameter `location`
- Example response:

``` json
{
    "data": {
        "type": "image",
        "id": null,
        "attributes": {
            "image": {
                "image_url": "https://images.pexels.com/photos/2706750/pexels-photo-2706750.jpeg",
                "photographer": "Thomas Ward",
                "photographer_url": "https://www.pexels.com/@thomasleeward"
            }
        }
    }
}
```

POST `http://localhost:3000/api/v1/users`
- Create a user and get an API key in the response. Include email, password and password_confirmation in the request body
``` json
{
    "email": "christopher@mail.com",
    "password": "123",
    "password_confirmation": "123"
}
```
- Exmaple response:
``` json
{
    "data": {
        "type": "users",
        "id": "3",
        "attributes": {
            "email": "christopher@mail.com",
            "api_key": "iZUVR5WjwFZYh9lE1rl07w"
        }
    }
}
```
POST `http://localhost:3000/api/v1/sessions`
- Log a user in and get their API key. Include email and password in the request body
```json
{
    "email": "christopher@mail.com",
    "password": "123"
}
```
- Example response:
```json
{
    "data": {
        "type": "users",
        "id": "3",
        "attributes": {
            "email": "christopher@mail.com",
            "api_key": "iZUVR5WjwFZYh9lE1rl07w"
        }
    }
}
```
POST `http://localhost:3000/api/v1/road_trip`
- Create a "road trip" with an origin and desitination. Include origin, destination and api_key in the request body
```json
{
    "api_key": "iZUVR5WjwFZYh9lE1rl07w",
    "origin": "denver,co",
    "destination": "austin,tx"

}
```
- Example response:
```json
{
    "data": {
        "id": null,
        "type": "roadtrip",
        "attributes": {
            "start_city": "denver,co",
            "end_city": "austin,tx",
            "travel_time": "15:23:42",
            "weather_at_eta": {
                "temperature": 88.9,
                "conditions": "clear sky"
            }
        }
    }
}
```
