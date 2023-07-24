puts "🌱 Seeding spices..."

# Seed your database here
# require './db/config' # Load the database configuration file
# require './models/user' # Load the User model
# require 'faker'

# Seed data for users
5.times do
    user = User.create(
      name: Faker::Name.name,
      email: Faker::Internet.email,
      password_digest: Faker::Alphanumeric.alpha(number: 10)
    )
  
    puts "Created user: #{user.name}, email: #{user.email}"
  end

puts "✅ Done seeding!"
