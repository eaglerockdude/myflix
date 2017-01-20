Fabricator(:video)do
  #category
  title Faker::Lorem.word
  description Faker::Lorem.paragraph
  created_at {Faker::Date.between(2.days.ago, Date.today)}
end

