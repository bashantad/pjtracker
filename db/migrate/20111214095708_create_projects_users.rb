class CreateProjectsUsers < ActiveRecord::Migration
  def change
    create_table :projects_users do |t|
      t.string :user_id
      t.string :project_id

      t.timestamps
    end
  end
end
