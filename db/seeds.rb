Author.create!(name: "Example",
               email: "example@testexample.com",
               password: "foobarbuz")

10.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@testexample.com"
  password = "password"
  Author.create!(name: name,
                 email: email,
                 password: password)
end

authors = Author.order(:created_at).take(5)
50.times do |n|
  title = Faker::Lorem.word
  description = Faker::Lorem.sentence(word_count: 5)
  content = Faker::Lorem.paragraphs(number: 10).join("")

  authors.each { |author| author.articles.create!(title: title, description: description, content: content) }
end