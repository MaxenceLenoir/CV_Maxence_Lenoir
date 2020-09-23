class Project < ActiveRecord::Base
  validates :name, presence: true
  validates :url, presence: true
  translates :skill_one, :skill_two, :skill_three, :description, :client
end
