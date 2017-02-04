Fabricator(:user) do
  full_name {Faker::Name.name}
  email { |attrs| "#{attrs[:full_name].parameterize}@example.com" }
  email {Faker::Internet.email}
  password {Faker::Internet.password}
end