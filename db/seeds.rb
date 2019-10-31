# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'http'
require 'net/http'
require 'json'
require 'faker'

## Destroy statements for re-seeding.
# CatBreed.destroy_all
# Tree.destroy_all
# Cat.destroy_all

## API calls for Get cat breeds and trees
breeds = JSON.parse(HTTP[x_api_key: ENV['CAT_API_KEY']].get('https://api.thecatapi.com/v1/breeds'))
wpg_trees = JSON.parse(HTTP.get('https://data.winnipeg.ca/resource/d3jk-hb6j.json'))
# https://data.winnipeg.ca/resource/d3jk-hb6j.json
# https://data.winnipeg.ca/resource/d3jk-hb6j.json?%24limit=2

# Cat Breed objects
breeds.each do |breed|
  Breed.create(
    name: breed['name'],
    description: breed['description'],
    temperament: breed['temperament'],
    origin: breed['origin'],
    stranger_friendly: breed['stranger_friendly']
  )
end

## Tree objects
wpg_trees.each do |tree|
  Tree.create(
    botanical_name: tree['botanical_name'],
    common_name: tree['common_name'],
    neighbourhood: tree['neighbourhood'],
    diameter: tree['diameter_at_breast_height'].to_f,
    park: tree['park'],
    location_class: tree['location_class'],
    property_type: tree['property_type'],
    x: tree['x'].to_f,
    y: tree['y'].to_f
  )
end

puts "#{Breed.count} cat breed(s)!\n"
puts "#{Tree.count} tree(s)!\n"

## Cat objects
# Use of random method found here: https://stackoverflow.com/questions/2752231/random-record-in-activerecord
# 2.times do
#   tree = Tree.order('RANDOM()').first
#   cat_breed = CatBreed.order('RANDOM()').first

#   puts "#{Faker::Name.unique.last_name} is a #{cat_breed.name} (#{cat_breed.id}), and should have been in tree #{tree.id}"

#   cat = Cat.create(
#     name: Faker::Name.unique.last_name,
#     breed_id: cat_breed.id,
#     tree_id: tree.id
#   )

#   cat.errors.each do |attr, message|
#     puts "#{attr} #{message}"
#   end
# end

# puts "#{CatBreed.count} cat breed(s)!\n"
# puts "#{Cat.count} cat(s)!\n"

# Cat.all.each_with_index do |cat, n|
#   puts "#{n} - Name: #{cat.name}, Breed: #{cat.breed_id}, Tree: #{cat.tree_id}"
# end
