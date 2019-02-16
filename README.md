[![forthebadge](https://forthebadge.com/images/badges/makes-people-smile.svg)](https://forthebadge.com)
[![forthebadge](https://forthebadge.com/images/badges/contains-technical-debt.svg)](https://forthebadge.com)

# README

### System dependencies

ruby-2.5.0

rails 5.1.5

postgresql 10.1

### Database creation

    rails db:create

### Database initialization

    rails db:migrate
    rails db:seed

### How to run the test suite

For writing Acceptence tests in this project we are using 3 different approaches and fremworks:

Minitest+Capybara, RSpec+Capybara, CodeceptJS framework.

#### Minitest+Capybara

That tests are place in `test` folder

To run rails system tests with MiniTest and Capybara please type:

    rails test:system

#### RSpec+Capybara

That tests are place in `spec` folder

To run rails system tests with RSpec and Capybara please type:

    rspec -cfd

#### CodeceptJS
    
That tests are place in `codeceptjs` folder

To run CodeceptJS tests wich based on node.js please type:

    codeceptjs run

### Services (job queues, cache servers, search engines, etc.)

### Deployment instructions
