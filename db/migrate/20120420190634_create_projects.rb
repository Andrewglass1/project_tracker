class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.string :git_hub
      t.integer :max_users
      t.timestamps
    end
  end
end
