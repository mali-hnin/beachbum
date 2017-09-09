# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'nokogiri'
require 'open-uri'

puts "destroying all previous beaches..."
Beach.destroy_all


doc = Nokogiri::HTML(open('https://en.wikipedia.org/wiki/List_of_beaches_in_Portugal'))

beaches = []

doc.css('.column-count-2 li').each do |beach|
  beaches << beach.content.gsub(/\n/, '').gsub(/[\(\)]/, '  ') unless beach.content.empty?
end

boolean = [true, false]
water_sports = %w(jetski boat kayak kitesurf windsurf paddle surf wakeboard banana)
beach_sports = %w(football volleyball tennis)

beaches.each do |beach|
  beach = beach.split('  ')
  nudist = boolean.sample
  category = ["rocky", "sandy", "extreme"].sample
  case category
    when "rocky"
      icon = "http://res.cloudinary.com/gabrielecanepa/image/upload/c_scale,w_50/v1504919444/001-cave_fbaiy2.png"
    when "sandy"
      icon ="http://res.cloudinary.com/gabrielecanepa/image/upload/c_scale,w_50/v1504919446/003-beach-3_kxtiga.png"
    when "extreme"
      icon = "http://res.cloudinary.com/gabrielecanepa/image/upload/c_scale,w_50/v1504919446/015-beach_r4sbba.png"
  end


  Beach.create(
    name: beach.first,
    address: beach.join(', '),
    category: category,
    bar: boolean.sample,
    price: rand(1..5),
    nudist: nudist,
    nude_friendly: (boolean.sample || nudist),
    pet_friendly: boolean.sample,
    beach_sports: beach_sports.sample(rand(1..9)),
    water_sports: water_sports.sample(rand(1..3)),
    crowd: rand(1..5),
    country: "Portugal",
    city: beach[-1],
    parking: boolean.sample,
    public_transportation: boolean.sample,
    walking_distance: [50, 50, 50, 100, 100, 100, 200, 200, 500, 1000].sample,
    sand_type: ["fine white sand", "pebbles", "fine white sand"].sample,
    icon: icon
  )
end
