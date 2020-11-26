# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destroy all"

RentalRequest.destroy_all
User.destroy_all
Instrument.destroy_all

puts "created users"

marc = User.new(username: "Marc",  email:"marc.neusch@icloud.com", password:"cerise")
file = File.open(Rails.root.join('db/seeds/images/users/marc.png'))
marc.avatar.attach(io: file, filename: 'marc.png', content_type: 'image/png')
marc.save!

gab = User.new(username: "Gabriel",     email:"gabrielmaire69@gmail.com", password:"cerise")
file = File.open(Rails.root.join('db/seeds/images/users/gab.jpg'))
gab.avatar.attach(io: file, filename: 'gab.jpg', content_type: 'image/jpg')
gab.save!

ophe = User.new(username: "Ophelie",   email:"ophelie@gmail.com", password:"cerise")
file = File.open(Rails.root.join('db/seeds/images/users/ophelie.png'))
ophe.avatar.attach(io: file, filename: 'ophelie.png', content_type: 'image/png')
ophe.save!

steph = User.new(username: "Stephane", email:"steph@gmail.com", password:"cerise")
file = File.open(Rails.root.join('db/seeds/images/users/steph.jpg'))
steph.avatar.attach(io: file, filename: 'steph.jpg', content_type: 'image/jpg')
steph.save!

puts "created instruments"

marc_saxo = Instrument.new(category: "Instrument à vent",
                                name: "Saxophone Yamaha",
                                price_per_day: 9,
                                location:  "3 Rue de la Noue Bras de Fer, 44200 Nantes",
                                city: "Nantes",
                                description: "saxophone alto professionnel. Les saxophones Yamaha YAS-280 sont spécifiquement développés pour les saxophonistes débutants et intermédiaires. Leur poids légers et leurs formes ergonomiques en font des instruments faciles à porter et à jouer. La justesse est parfaite et il est facile d'obtenir une belle sonorité...",
                                owner: marc,
                                )
file = File.open(Rails.root.join('db/seeds/images/instruments/saxo.jpg'))
marc_saxo.photo.attach(io: file, filename: 'saxo.jpg', content_type: 'image/jpg')
marc_saxo.save!


marc_guitare = Instrument.new(category: "Instrument à corde",
                                name: "Guitare Muse de Luna",
                                price_per_day: 6,
                                location:  "2 Rue de la Paix, 44000 Nantes",
                                city: "Nantes",
                                description: "Légère, confortable et délivrant pour autant un son riche et puissant, la version 3/4 du célèbre modèle Muse de Luna constitue également une excellente guitare d'étude pour les débutants et les jeunes guitaristes.",
                                owner: marc,
                                )
file = File.open(Rails.root.join('db/seeds/images/instruments/marc_guitare.jpg'))
marc_guitare.photo.attach(io: file, filename: 'marc_guitare.jpg', content_type: 'image/jpg')
marc_guitare.save!


marc_ukulele = Instrument.new(category: "Instrument à corde",
                                name: "Ukulele Martin",
                                price_per_day: 12,
                                location:  "10 rue Crébillon, 44000 Nantes",
                                city: "Nantes",
                                description: "Ayant appartenu à Paul Mc Cartney, ce Ukulele est un instrument de collection qui ravira tout les amateurs de musique, tant par son histoire que par sa qualité de fabrication",
                                owner: marc,
                                )
file = File.open(Rails.root.join('db/seeds/images/instruments/ukulele.jpg'))
marc_ukulele.photo.attach(io: file, filename: 'ukulele.jpg', content_type: 'image/jpg')
marc_ukulele.save!



marc_piano = Instrument.new(category: "Clavier",
                                name: "Piano SAMICK SIG 48",
                                price_per_day: 7,
                                location:  "25 Rue Hubert de la Brosse, 44700 Orvault",
                                city: "Orvault",
                                description: "C'est l'un des plus petits pianos du marché actuel. Un meuble élégant et raffiné, soigné dans les moindres détails.
                                Les pianos à queue Samick offrent au pianistes débutants ou amateurs, une palette sonore très agréable et un toucher fin et bien équilibré.",
                                owner: marc,
                                )
file = File.open(Rails.root.join('db/seeds/images/instruments/marc_queue.jpg'))
marc_piano.photo.attach(io: file, filename: 'marc_queue.jpg', content_type: 'image/jpg')
marc_piano.save!



marc_trompette = Instrument.new(category: "Instrument à vent",
                                name: "Trompette JTR500Q",
                                price_per_day: 4,
                                location:  "6 Place de la Bourse, 44000 Nantes",
                                description: "La branche d’embouchure et la coulisse d’accord en cuivre rose ainsi que les tubes extérieurs en maillechort font de la trompette JTR500Q un instrument fiable et robuste.
                                La coulisse d’accord garantit une émission facile et une bonne intonation.",
                                owner: marc,
                                )
file = File.open(Rails.root.join('db/seeds/images/instruments/trompette.png'))
marc_trompette.photo.attach(io: file, filename: 'trompette.png', content_type: 'image/png')
marc_trompette.save!


gab_violoncelle = Instrument.new(category: "Instrument à cordes",
                                name: "Violoncelle GEWA",
                                price_per_day: 3,
                                location:  " 2 Rue Piet, 85330 Noirmoutier-en-l'Île",
                                description: "Instrument de belle facture, de finition soignée un joli son et un bon confort de jeu.
                                Après un petit réglage en atelier de lutherie, quatre mois d'utilisation et un concert, je suis très satisfait de cet achat.",
                                owner: gab,
                                )
file = File.open(Rails.root.join('db/seeds/images/instruments/violoncelle.jpg'))
gab_violoncelle.photo.attach(io: file, filename: 'violoncelle.jpg', content_type: 'image/jpg')
gab_violoncelle.save!



marc_violon = Instrument.new(category: "Instrument à cordes",
                                name: "Pack violon Stentor 1/2",
                                price_per_day: 3,
                                location:  "2 Rue Gaëtan Rondeau, 44201 Nantes",
                                description: "Le Violon Stentor Student II est un instrument fabriqué à la main de très grande qualité, conçu pour les étudiants qui veulent un instrument avec une grande qualité sonore constante sur lequel apprendre sans se ruiner.",
                                owner: marc,
                                )
file = File.open(Rails.root.join('db/seeds/images/instruments/violon.jpg'))
marc_violon.photo.attach(io: file, filename: 'violon.jpg', content_type: 'image/jpg')
marc_violon.save!

steph_batterie = Instrument.new(category: "Percussion",
                                name: "ROLAND TD-1K",
                                price_per_day: 9,
                                location:  "4 Rue Jeanne d'Arc, 44000 Nantes",
                                description: "La batterie électronique est un instrument électronique qui dérive de la batterie : les fûts et cymbales sont remplacés par des pads en mousse ou caoutchouc ou encore en fausse peau (peau résille ou mesh) équipés de capteurs électriques qui permettent le déclenchement d'un son. Sun Music est revendeur des marques Roland, Yamaha, Alesis, 2Box pour Toulon, le Var et la France.",
                                owner: steph
                                )
file = File.open(Rails.root.join('db/seeds/images/instruments/batterie.jpg'))
steph_batterie.photo.attach(io: file, filename: 'batterie.jpg', content_type: 'image/jpg')
steph_batterie.save!


steph_flute = Instrument.new(category: "Instrument à vent",
                                name: "Yamaha YFL 282 ID2",
                                price_per_day: 15,
                                location:  "3 Rue de l'Hippodrome, 44300 Nantes",
                                description: "La Flûte traversière Yamaha YFL282 id remplace la YFL281 id. C'est bien plus qu'une simple version d'étude des modèles professionels de la marque. Bénéficiant de la même conception et du même savoir faire de haut niveau que les modèles des Séries 300 et 400, les flûtes de la Série 200 sont en maillechort avec une élégante finition argentée.",
                                owner: steph
                                )
file = File.open(Rails.root.join('db/seeds/images/instruments/flute.jpg'))
steph_flute.photo.attach(io: file, filename: 'flute.jpg', content_type: 'image/jpg')
steph_flute.save!


ophe_clarinette = Instrument.new(category: "Instrument à vent",
                                name: "Clarinette Leblanc",
                                price_per_day: 3,
                                location:  "4 rue Dessaix 44000 Nantes",
                                description: "Grand instrument composé de matériaux solides et durables, cette superbe clarinette est agréable au toucher et forme une bonne connexion avec le joueur.",
                                owner: ophe
                                )
file = File.open(Rails.root.join('db/seeds/images/instruments/clarinette.jpg'))
ophe_clarinette.photo.attach(io: file, filename: 'clarinette.jpg', content_type: 'image/jpg')
ophe_clarinette.save!


ophe_guitare = Instrument.new(category: "Instrument à cordes",
                                name: "Guitare junior",
                                price_per_day: 2,
                                location:  "1 rue du Gué Robert 44000 Nantes",
                                description: "Conçue pour les jeunes débutants, la guitare classique Junior offre un instrument de grande qualité. Avec un corps de taille junior, des cordes en nylon et une gamme de couleurs vives, c'est la guitare parfaite pour l'enfant désirant s'essayer à la musique.",
                                owner: ophe
                                )
file = File.open(Rails.root.join('db/seeds/images/instruments/ophe_guitare.jpg'))
ophe_guitare.photo.attach(io: file, filename: 'ophe_guitare.jpg', content_type: 'image/jpg')
ophe_guitare.save!

marc_synthetiseur = Instrument.new(category: "Clavier",
                                name: "Synthétiseur Yamaha",
                                price_per_day: 5,
                                location:  "1 rue Saint-Vincent 44000 Nantes",
                                description: "Conçue pour les jeunes débutants, la guitare classique Junior offre un instrument de grande qualité. Avec un corps de taille junior, des cordes en nylon et une gamme de couleurs vives, c'est la guitare parfaite pour l'enfant désirant s'essayer à la musique.",
                                owner: marc
                                )
file = File.open(Rails.root.join('db/seeds/images/instruments/marc_synthetiseur.jpg'))
marc_synthetiseur.photo.attach(io: file, filename: 'marc_synthetiseur.jpg', content_type: 'image/jpg')
marc_synthetiseur.save!

puts "created rental_requests"

rental_requests = RentalRequest.create!(
                                start_date: "2020-03-01",
                                end_date: "2020-04-03",
                                renter: steph,
                                instrument: marc_violon,
                                total_price: 136,
                                status: "acceptée"
                                )


rental_requests = RentalRequest.create!(
                                start_date: "2020-02-01",
                                end_date: "2020-02-10",
                                renter: steph,
                                instrument: ophe_clarinette,
                                total_price: 27,
                                status: "acceptée"
                                )

rental_requests = RentalRequest.create!(
                                start_date: "2020-10-02",
                                end_date: "2020-10-20",
                                renter: steph,
                                instrument: gab_violoncelle,
                                status: "acceptée",
                                total_price: 54
                                )

rental_requests = RentalRequest.create!(
                                start_date: "2020-10-20",
                                end_date: "2020-10-28",
                                renter: gab,
                                instrument: marc_piano,
                                status: "acceptée",
                                total_price: 56
                                )

rental_requests = RentalRequest.create!(
                                start_date: "2020-09-20",
                                end_date: "2020-10-26",
                                renter: steph,
                                instrument: marc_trompette,
                                status: "refusée",
                                total_price: 24
                                )


rental_requests = RentalRequest.create!(
                                start_date: "2020-10-15",
                                end_date: "2020-10-17",
                                renter: steph,
                                instrument: marc_synthetiseur,
                                status: "acceptée",
                                total_price: 15
                                )

rental_requests = RentalRequest.create!(
                                start_date: "2020-09-11",
                                end_date: "2020-09-17",
                                renter: ophe,
                                instrument: marc_guitare,
                                status: "acceptée",
                                total_price: 42
                                )

rental_requests = RentalRequest.create!(
                                start_date: "2020-11-27",
                                end_date: "2020-12-03",
                                renter: steph,
                                instrument: marc_saxo,
                                status: "en attente",
                                total_price: 63,
                                )

puts "finish "
