class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :skill_one
      t.string :skill_two
      t.string :skill_three
      t.string :description
      t.string :client
      t.string :url
      t.string :asset_url
      t.timestamps
    end
  end
end
