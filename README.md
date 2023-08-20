# SUPERHERO POWERS API
This is a Rails API application that manages superhero characters and their powers using a relational database. You can use this API to retrieve information about heroes, powers, and their associations.

## GETTING STARTED

### Prerequisites
Before you begin, ensure you have the following installed:

Ruby (version 2.7.4)
Ruby on Rails (version 7.0.7 )

### installation
1. clone the repository
git clone <repository_url>
cd superhero-powers-api
2. install dependencies
bundle install
3. setup the database
rails db:migrate
rails db:seed
4. start the server
rails server


## API Endpoints

### Heros
GET /heros: Get a list of all heroes.
GET /heros/:id: Get details about a specific hero and their associated powers.
POST /heros: Create a new hero.
### Powers
GET /powers: Get a list of all powers.
GET /powers/:id: Get details about a specific power.
PATCH /powers/:id: Update an existing power's description.
### Hero Powers
POST /hero_powers: Create a new HeroPower relationship between an existing hero and power.

## JSON Responses
Hero details include ID, name, super name, and associated powers.
Power details include ID, name, and description.
Validation errors are returned in JSON format with appropriate HTTP status codes

## Contributing
Contributions are welcome! If you find a bug or have suggestions for improvement, feel free to create an issue or submit a pull request.

## license
This project is licensed under the MIT License.

