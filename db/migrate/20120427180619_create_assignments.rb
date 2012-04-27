class CreateAssignments < ActiveRecord::Migration
  def create
    create_table :assignments do |t|
      t.integer :user_id
      t.integer :project_id
      t.timestamps
    end
  end
end
