# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying all skills / projects ..."

Skill.destroy_all
Project.destroy_all

puts "Creating some skills ..."

Skill::SKILLS.each do |skill|
  Skill.create!(skill)
end

puts "#{Skill.count} skills created"

puts "Creating some projects ..."

resonances = Project.new(name: "Resonances", url: "https://www.resonances.group/", skill_one: "Système notification en temps réel", skill_two: "Interface Admin - Active Admin", skill_three: "Calcul de points basé sur les actions utilisateur", description: "Résonances aide les sociétés a être agiles et résilientes", client: "Arnaud Bonnefond", asset_url: 'Resonances.png')
resonances.save!
obras = Project.new(name: "Obras", url: "https://ppsps-project.herokuapp.com/", skill_one: "Front React JS", skill_two: "Wizard form (Multi step)", skill_three: "Export PDF - Gem Grover", description: "Plateforme web qui simplifie la création de documents sécurité pour les entreprise de BTP (PPSPS)", client: "Projet Personnel", asset_url: 'Obras.png')
obras.save!
accessinnpattaya = Project.new(name: "AccessInnPattaya", url: "https://www.accessinnpattaya.com/", skill_one: "Gestion back-end booking", skill_two: "Background Jobs - Tâches automatisées (Mails ...)", skill_three: "Intégration système paiement PayPal", description: "Site à destination d'un complexe hotelier Thailandais", client: "Hotel Access Inn Pattay", asset_url: 'AccessInnPattay.png')
accessinnpattaya.save!
gratte_ton_chomage = Project.new(name: "GratteTonChomage", url: "http://www.grattetonchomage.fr/", skill_one: "Calcul allocation - Back-end", skill_two: "Export PDF - Gem wicked-pdf", skill_three: "Formulaire AJAX gestions erreurs", description: "Application qui permet de faciliter l'accès au chomage pour les personnes revenant de V.I.", client: "projet perso", asset_url: 'Grattetonchomage.JPG')
gratte_ton_chomage.save!
homeboard = Project.new(name: "HomeBoard", url: " https://mynewhomeboard.herokuapp.com/", skill_one: "Chat live - Action Cable", skill_two: "Notifications en temps réel - Action Cable", skill_three: "Authentification & Authorization",  description: "Application qui permet de gérer sa vie de propriétaire et améliorer les relations de voisinages au travers de services.", client: "Projet final du Wagon", asset_url: 'Homeboard.JPG')
homeboard.save!
airbnbike = Project.new(name: "AirbnBike", url: "https://airbnbikes.herokuapp.com/", skill_one: "Airbnb like - Market place", skill_two: "Système de paiement - Stripe", skill_three: "Géomapping & géolocalisation - Mapbox", description: "Market place permettant de mettre en relation des cyclistes occasionnels.", client: "1er projet du Wagon", asset_url: 'AirbnBike.JPG')
airbnbike.save!

puts "#{Project.count} projects created"

puts "Traduction ..."

resonances.attributes = { skill_one: 'Notification system in real time', skill_two: 'Admin Interface - Active Admin', skill_three: "Points calculation based on user's actions", description: "Resonances helps companies to be agile and resilient.", client: "Arnaud Bonnefond", locale: :en }
resonances.save!
obras.attributes = { skill_one: 'Front React JS', skill_two: 'Wizard form (Multi step)', skill_three: "Export PDF - gem Grover", description: "Web plateform which simplify security documents creation for construction companies", client: "Personal Project", locale: :en }
obras.save!
accessinnpattaya.attributes = { skill_one: 'Booking - Back-end', skill_two: 'Background Job - automated tasks (mailer ...)', skill_three: 'Paypal payment', description: "Website for an thai hotel complex.", client: "Access Inn Pattay", locale: :en }
accessinnpattaya.save!
gratte_ton_chomage.attributes = { skill_one: 'Allowance calculation - Back-end', skill_two: 'PDF Export - Gem wicked-pdf', skill_three: 'AJAX form to handle errors', description: "Application to facilitate access to unemployment benefits after international experience.", client: "Personal project", locale: :en }
gratte_ton_chomage.save!
homeboard.attributes = { skill_one: 'Chat live - Action Cable', skill_two: 'Real time notifications - Action Cable', skill_three: 'Authentification & Authorization', description: "Application for appartment owner who expect to make new relationship based on services.", client: "Final project Le Wagon", locale: :en }
homeboard.save!
airbnbike.attributes = { skill_one: 'Airbnb like - Market place', skill_two: 'Payment system - Stripe', skill_three: 'Geomapping & Geolocalization - Mapbox', description: "Market place for bike lovers.", client: "1st project Le Wagon", locale: :en }
airbnbike.save!
resonances.attributes = { skill_one: 'Sistema de notificación en vivo', skill_two: 'Interfaz de Administración - Active Admin', skill_three: "Cálculo de puntos basado en acciones del usuario", description: "Resonances ayudo compañías para ser ágil y resistentes.", client: "Arnaud Bonnefond", locale: :sp }
resonances.save!
obras.attributes = { skill_one: 'Front React JS', skill_two: 'Wizard form (Multi step)', skill_three: "Export PDF - gem Grover", description: "Plateforma web que simplifica la creación de documentos de seguridad para empresas de construcción.", client: "Proyecto Personal", locale: :sp }
obras.save!
accessinnpattaya.attributes = { skill_one: 'Reservacíon - Back end', skill_two: 'Background Job - tareas automatizadas (mails ...)', skill_three: 'Paypal pago', description: "Sitio web para um complejo hotelero tailandés", client: "Access Inn Pattay", locale: :sp }
accessinnpattaya.save!
gratte_ton_chomage.attributes = { skill_one: 'calculo prestación desempleo - Back-end', skill_two: 'Exportación PDF - Gem wicked-pdf', skill_three: 'Formulario AJAX para manejar errores', description: "Aplicación para facilitar accesso al derecho al desempleo despúes de una experiencia internacional.", client: "Proyecto personal", locale: :sp }
gratte_ton_chomage.save!
homeboard.attributes = { skill_one: 'Chat en vivo - Action Cable', skill_two: 'notificaciones en tiempo real - Action Cable', skill_three: 'Authentification & Authorization', description: "Aplicación para dueño de apartamento esperando oportunidades del vecindad.", client: "Proyecto final Le Wagon", locale: :sp }
homeboard.save!
airbnbike.attributes = { skill_one: 'Airbnb like - Market place', skill_two: 'Sistema de pago - Stripe', skill_three: 'Geomapping & Geolocalization - Mapbox', description: "Market place para los aficionados de la bicicleta.", client: "Proyecto 1 Le Wagon", locale: :sp }
airbnbike.save!

puts "Finished !"

