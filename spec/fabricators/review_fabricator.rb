Fabricator(:review) do
  video
  rating {(1..5).to_a.sample}
  content{Faker::Lorem.paragraph(3)}
end