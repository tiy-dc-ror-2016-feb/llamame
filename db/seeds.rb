# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@boss = User.create(email: "boss@boss.com", password: "password", first_name: "Sam", last_name: "Kim", is_a_boss: true)

20.times do
  User.create(email: FFaker::Internet.email, password: "password", first_name: FFaker::Name.first_name, last_name: FFaker::Name.last_name)
end

25.times do
  Company.create(name: FFaker::Company.name, salesperson: FFaker::Name.name) #notes: FFaker::Lorem.sentences.join("\n"))
end

100.times do
  Person.create(first_name: FFaker::Name.first_name, last_name: FFaker::Name.last_name, company_id: rand(1..25))
end

15.times do
  Note.create(body: FFaker::Lorem.paragraphs.join("\n"))
end

30.times do |list|
  list = ["email", "phone", "voicemail", "in person"]
  Interaction.create(topic: FFaker::Lorem.sentence, medium: list[rand(0..3)], details: FFaker::Lorem.paragraphs.join("\n"), follow_up_date: FFaker::Time.date)
end
