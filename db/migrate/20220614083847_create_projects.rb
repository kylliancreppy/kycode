class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :category
      t.string :description
      t.string :website
      t.integer :date

      t.timestamps
    end
  end
end
