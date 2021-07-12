class Project < ActiveRecord::Base
  validates :name, presence: true
  validates :url, presence: true
  translates :skill_one, :skill_two, :skill_three, :description, :client

  PROJECTS = [
    {
      name: "Resonances",
      url: "https://www.resonances.group/",
      client: "Arnaud Bonnefond", asset_url: 'Resonances.png'
    },
    {
      name: "Obras",
      url: "https://ppsps-project.herokuapp.com/",
      client: "Projet Personnel",
      asset_url: 'Obras.png'
    },
    {
      name: "AccessInnPattaya",
      url: "https://www.accessinnpattaya.com/",
      client: "Hotel Access Inn Pattay",
      asset_url: 'AccessInnPattay.png'
    },
    {
      name: "GratteTonChomage",
      url: "http://www.grattetonchomage.fr/",
      client: "projet perso",
      asset_url: 'Grattetonchomage.JPG'
    },
    {
      name: "Homeboard",
      url: " https://mynewhomeboard.herokuapp.com/",
      client: "Projet final du Wagon",
      asset_url: 'Homeboard.JPG'
    },
    {
      name: "Airbnbike",
      url: "https://airbnbikes.herokuapp.com/",
      client: "1er projet du Wagon",
      asset_url: 'AirbnBike.JPG'
    }
  ]
end
