class PagesController < ApplicationController
  def home
    # Skills in the seed
    @skills = Skill.all.order(:name)
    @levels = ['beginner', 'intermediate', 'advanced']
    @projects = Project.all
  end
end
