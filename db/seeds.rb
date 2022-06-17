require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Project.destroy_all

def set_project(name, description, date)
    file = URI.open(url)
    project = Project.new(
        name: name,
        description: description,
        date:   date
    )

    project.photo.attach(io: file, filename: 'image.png')
    project.save!
end 

    projects = [
        {name: "Helpers", photo: "https://www.bainssuroust.fr/medias/2020/03/ADMR_baseline_JPG-scaled.jpg", description: "154, Rue des Pyrénées, Paris", date: 2021},
    ]

    projects.each do |project|
        set_project(project[:name], project[:photo], project [:description], project[:date])
    end