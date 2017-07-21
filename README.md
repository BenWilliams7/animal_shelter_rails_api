# Cat Shelter API

### The cat shelter API is a RESTful API that returns the names, breeds, ages, and availabilities of cats in JSON format.

### By Ben Williams

# Endpoints

#### get /animals
 returns page 1 of cats (currently set to 100 cats (for testing purrrposes), which is all of them)

#### get /animals/page/2
 returns the second page of cats (currently an empty array as only 20 cats are seed)

#### get /random
  returns a random cats

#### get /search?name=[:name]  
  returns cats whose names match the search term

## Setup
Clone the repo
#### In terminal run:
bundle install
rails db:setup
rails s
#### Navigate to:
localhost:3000


## Technologies
Rails
Ruby
Rspec
Faker
FactoryGirl

## License
Free use under the MIT license
