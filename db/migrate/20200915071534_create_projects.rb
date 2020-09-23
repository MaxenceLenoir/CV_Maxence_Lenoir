class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :url
      t.string :asset_url
      t.string :name
      t.timestamps
    end

    reversible do |dir|
      dir.up do
        Project.create_translation_table! skill_one: {type: :string, null: false}, skill_two: :string, skill_three: :string, description: :string, client: :string
      end

      dir.down do
        Project.drop_translation_table!
      end
    end
  end
end