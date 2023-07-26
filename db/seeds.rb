# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Style.destroy_all
dailyIncStyle = Style.create(name: "daily increment", description: "The tempo to practise at increases by a set amount after each success.")
fixedTempoStyle = Style.create(name: "fixed tempo", description: "Practise at the same tempo every time.")

puts("Seeded practise styles", dailyIncStyle, dailyIncStyle.name, dailyIncStyle.id)

# had to make a table by hand otherwise get exception: 
# no such table: main.PractiseStyles 
# So redid the scaffold without camelCase
# > rails db:rollback
# > rails destroy scaffold PractiseStyle
# > rails destroy scaffold Study

# Then remade scaffolds without camelCase
# > rails generate scaffold Style name:string description:text 
# > rails generate scaffold Study title:string content:text target_tempo:integer cur_tempo:integer backing_track:string style:references
# > rails db:seed

Study.destroy_all
sirDuke = Study.create!(title: "Sir Duke", content: "B major pentatonic riff", target_tempo: 110, cur_tempo: 95, backing_track: "16th Note Funk", style: fixedTempoStyle)
hysteria = Study.create!(title: "Hysteria", content: "16th note riff", target_tempo: 95, cur_tempo: 90, backing_track: "One rest rest rest", style: dailyIncStyle)

puts("Seeded studies", sirDuke, sirDuke.id, sirDuke.style)
