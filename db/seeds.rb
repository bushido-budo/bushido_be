# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'csv'
# CSV.foreach(Rails.root.join('db/data/shaolin_animals.csv'), headers: true) do |row|
#   ShaolinAnimal.create!(
#     animal: row[1]
#   )
# end

# CSV.foreach(Rails.root.join('db/data/animal_traits.csv'), headers: true) do |row|
#   AnimalTrait.create!(
#     characteristic: row[0],
#     shaolin_animal_id: row[1]
#   )
# end