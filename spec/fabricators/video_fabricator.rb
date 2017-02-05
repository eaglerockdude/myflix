Fabricator(:video)do
  #category
  title Faker::Lorem.words(2).join(' ')
  description Faker::Lorem.paragraph
  url_small_cover { |attrs| "#{attrs[:title]}.jpg" }
  url_large_cover { |attrs| "#{attrs[:title]}_large.jpg" }
  created_at {Faker::Date.between(2.days.ago, Date.today)}
end

