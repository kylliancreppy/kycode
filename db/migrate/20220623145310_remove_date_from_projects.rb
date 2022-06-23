class RemoveDateFromProjects < ActiveRecord::Migration[6.0]
  def change
    remove_column :projects, :date, :integer
  end
end
