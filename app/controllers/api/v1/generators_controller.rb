class API::V1::GeneratorsController  < ApplicationController
  def name
    surnames = [
      "de #{Faker::ElderScrolls.region}",
      "de #{Faker::GameOfThrones.city}",
      "de #{Faker::LordOfTheRings.location}",
      Faker::StarWars.specie,
      Faker::StarWars.vehicle
    ]

    render json: {
      name: Faker::Name.first_name,
      surname: surnames.sample
    }
  rescue
    render json: {
      name: 'MyName',
      surname: 'Test'
    }
  end
end
