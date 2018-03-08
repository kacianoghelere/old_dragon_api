class API::V1::GeneratorsController  < ApplicationController
  require 'faker'

  def name
    render json: { name: Faker::Ancient.hero, surname: Faker::GameOfThrones.city }
  end
end
