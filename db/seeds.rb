require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Project.destroy_all

def set_project(name, description, category, url)
    file = URI.open(url)
    project = Project.new(
        name: name,
        description: description,
        category: category
    )

    project.photo.attach(io: file, filename: 'image.png')
    project.save!
end 

    projects = [
        {name: "Helpers", photo: "app/assets/images/key.jpg", description: "Rue des Pyrénées, Paris", category:"Website"},
        {name: "Valorank", photo: "app/assets/images/key.jpg", description: "Rue des Pyrénées, Paris", category:"Website"}
    ]

    projects.each do |project|
        set_project(project[:name], project[:photo], project [:description],  project [:category])
    end