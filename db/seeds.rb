puts "🌱 Seeding spices..."

# Seed your database here
require './db/config' # Load the database configuration file
require './models/user' # Load the User model

# Seed data for users
5.times do
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: 'password' # Replace with appropriate password hashing in production
  )
end

puts "✅ Done seeding!"
