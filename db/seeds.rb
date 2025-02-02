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

  # Seed data for memberships
membership_plans = ["Basic Plan", "Premium Plan", "Standard Plan"]
membership_plans.each do |plan|
  Membership.create(
    plan_name: plan,
    pre_built_workouts: Faker::Number.between(from: 5, to: 15),
    gym_access: Faker::Boolean.boolean,
    class_access: Faker::Boolean.boolean,
    studio_access: Faker::Boolean.boolean,
    meal_plans: Faker::Boolean.boolean,
    personal_training_sessions: Faker::Number.between(from: 1, to: 5),
    price: Faker::Number.decimal(l_digits: 2)
  )
end

puts "Created #{Membership.count} membership plans."

# Seed data for posts
5.times do
  post = Post.create(
    title: Faker::Lorem.sentence,
    content: Faker::Lorem.paragraph,
    user_id: User.pluck(:id).sample # Randomly assign a user_id from existing users
  )

  puts "Created post: #{post.title}, author: #{post.user.name}"
end

puts "Created #{Post.count} posts."

puts "✅ Done seeding!"
