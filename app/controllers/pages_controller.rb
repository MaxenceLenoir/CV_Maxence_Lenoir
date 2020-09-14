class PagesController < ApplicationController
  def home
    # Skills in the seed
    @skills = Skill.all
    @levels = ['beginner', 'intermediate', 'advanced']
  end
end
