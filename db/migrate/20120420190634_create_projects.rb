class CreateProjects < ActiveRecord::Migration
  def create
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.string :git_hub
      t.timestamps
    end
  end
end
