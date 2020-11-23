# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

marc = User.create!(username: "Marc",  email:"marc.neusch@icloud.com", password:"cerise")
gab = User.create!(username: "Gabriel",     email:"gabrielmaire69@gmail.com", password:"cerise")
ophe = User.create!(username: "ophelie",   email:"ophelie@gmail.com", password:"cerise")
steph = User.create!(username: "Stephane", email:"steph@gmail.com", password:"cerise")



marc_saxo = Instrument.create!(category: "instrument à vent",
                                name: "Saxophone",
                                price_per_day: 5,
                                location:  "Nantes",
                                description: "",
                                owner: marc,
                                )
rental_requests = RentalRequest.create!(
                                start_date: "2020-11-27",
                                end_date: "2020/12/03",
                                renter: steph,
                                instrument: marc_saxo
                                )
