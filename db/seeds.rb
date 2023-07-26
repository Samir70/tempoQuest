# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

PractiseStyle.destroy_all
dailyIncStyle = PractiseStyle.create(name: "daily increment", description: "The tempo to practise at increases by a set amount after each success.")
fixedTempoStyle = PractiseStyle.create(name: "fixed tempo", description: "Practise at the same tempo every time.")

puts("Seeded practise styles", dailyIncStyle, dailyIncStyle.name, dailyIncStyle.id)


# had to make a table by hand otherwise get exception: 
# no such table: main.practiseStyles
# https://stackoverflow.com/questions/963420/undo-scaffolding-in-rails
# https://stackoverflow.com/questions/330339/re-generating-scaffold
# https://stackoverflow.com/questions/28535969/what-is-the-correct-way-to-generate-multi-word-reference-fields-in-rails
# https://stackoverflow.com/questions/54160521/how-do-i-create-a-seed-file-using-a-model-with-references-im-not-sure-i-set-up
Study.destroy_all
sirDuke = Study.create!(title: "Sir Duke", content: "B major pentatonic riff", targetTempo: 110, curTempo: 95, backingTrack: "16th Note Funk", practiseStyle: fixedTempoStyle)
hysteria = Study.create!(title: "Hysteria", content: "16th note riff", targetTempo: 95, curTempo: 90, backingTrack: "One rest rest rest", practiseStyle: dailyIncStyle)

puts("Seeded studies", sirDuke, sirDuke.id, sirDuke.practiseStyle_id)
