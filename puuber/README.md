# Setting up a Many-to-Many relationship with active record.

## Learning Goals

- Write Active Record Migrations

- Connect between tables using Active Record Associations

- Write class and instance methods using Active Record

- Use Active Record to query the database

## The Application

Puuber is a ride sharing app. You are tasked with making a RESTful API called "puuber_admin", for a

WIP internal tool.

A `driver` can have many `rides`.

A `passenger` can have many `rides`.

A `ride` belongs to a `passenger` and `driver`.

A `driver` can have many `passengers`, through `rides`.

A `passenger` can have many `drivers`, through `rides`.

## Getting started

run `bundle install`

## Migrations

Create your migrations.

- `Drivers`

- `Passengers`

- `Rides`

<br>

#### `drivers` Table

| Column         | Type    |
| -------------- | ------- |
| full_name      | string  |
| rating         | ingeger |
| money          | float   |
| driving_status | boolean |

#### `passengers` Table

| Column    | Type    |
| --------- | ------- |
| full_name | string  |
| phone_num | string  |
| rating    | integer |

#### `passengers` Table

| Column    | Type    |
| --------- | ------- |
| trip_strt | string  |
| trip_end  | string  |
| distance  | integer |

## Relationship

- What associations will this need?

- Dont forget the foreign keys!

- (i.e. `has_many`, `has_many through`, and `belongs_to`)

## Driver

- `driver_instance.passengers` returns all the instances of passengers associated with the instance of driver

- `driver_instance.start_trip`
  - Takes an instance of a passenger, and a starting address as arguments
  - Will change the the driving_status attribute to `true`
  - Creates a new instance of a trip
    - dont forget the foreign keys!
    - you can leave the trip_end, and distance attribute null
- `driver_instance.end_trip`
  - Should take an instance of a passenger, an instance of a trip, and an ending address arguments
  - The instance of trip that was passed as an argument should have its trip_end and distance attributes updated
    - Feel free to use a random integer for the distance for now
  - Should change the driver instance's driving_status attribute to false
- `Driver.hightest_rated`
  - returns an array of driver instances who's rating value is greater than or equal to 4
- `Driver.most_traveled`
  - returns a single driver instance who's total associated trip distance is the highest
    - Hint: Start with the `driver_instance.trips`

## Trip

- `trip_instance.driver`
  - returns the driver associated
- `trip_instance.cancel_trip`
  - removes the trip instance from the db
- `trip_instance.driver_info`
  - returns an object that contain:
    - the drivers name
    - the drivers rating
    - the total distance traveled by that driver

## Passenger

- `Passenger.highest_rated`
  - returns an array of passenger instances that have a rating of at least a 4
- `Passenger.contact_data`
  - returns an array of all the of passenger instances phone numbers
