# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Destroying previous data"
Hero.destroy_all
Power.destroy_all
HeroPower.destroy_all
puts "Seeding ...."
hero1 = Hero.create(name:"Speedy",super_name:"Speedy Gonzalez")
hero2 = Hero.create(name:"Kamau",super_name:"Lyricist")
hero3 = Hero.create(name:"Wanguku",super_name:"Chicken man")

power1 = Power.create(name:"Lyriscism",description:"Can hypnotise using music")
power2 = Power.create(name:"speed",description:"Can run really fast")
power3 = Power.create(name:"Chicken",description:"Can turn to a chicken and lay eggs")
power4 = Power.create(name:"Invisibility",description:"Can become invisible")
power5 =Power.create(name:"Kupepea",description:"Can Fly")
power6 = Power.create(name:"Reader",description:"Knows a loot of vocabulary")
# power1 = Power.create(name:,description:)

hero_power1 = HeroPower.create(strength:"Great hypnotist",hero_id:hero1[:id],power_id:power1[:id])
hero_power2 = HeroPower.create(strength:"really fast",hero_id:hero2[:id],power_id:power2[:id])
hero_power3 = HeroPower.create(strength:"Really tasty",hero_id:hero3[:id],power_id:power3[:id])
hero_power4 = HeroPower.create(strength:"cant be seen when he wants to",hero_id:hero1[:id],power_id:power4[:id])
hero_power5 = HeroPower.create(strength:"Doesnt have to deal with traffic",hero_id:hero2[:id],power_id:power5[:id])
hero_power6 = HeroPower.create(strength:"Can correct someone in an argument",hero_id:hero3[:id],power_id:power6[:id])
# hero_power1 = HeroPower.create(strength:,hero_id:,power_id:)
puts "Done seeding"