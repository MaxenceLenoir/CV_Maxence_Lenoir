class PagesController < ApplicationController
  def home
    # Skills in the seed
    @skills = Skill.all.order(:name)
    @levels = ['beginner', 'intermediate', 'advanced']
    @projects = Project.order(created_at: :asc)
    if locale == :fr
      @languages = {
        Anglaise: :en,
        Espagnole: :sp
      }
    elsif locale == :en
      @languages = {
        French: nil,
        Spanish: :sp
      }
    else
      @languages = {
        Inglesa: :en,
        Francesa: nil
      }
    end
  end
end
