# FitTech Gym Management System - Backend

FitTech Gym Management System is a modern fitness application backend that provides APIs for the FitTech Gym frontend application. The backend is built using Sinatra and Ruby Active Record, providing a robust and secure foundation for managing users, memberships, and posts.

## Introduction

This backend repository is a part of the FitTech Gym Management System, which aims to provide gym members and staff with a seamless and personalized fitness experience. The backend exposes RESTful APIs for user management, membership handling, and post creation, enabling smooth communication with the frontend.

## Features

* User registration and authentication system.
* CRUD operations for managing users, memberships, and posts.
* Secure storage of user passwords with password hashing and encryption.
* Seamless integration with the FitTech Gym frontend application.


## Prerequisites

Before setting up the FitTech Gym backend, ensure that you have the following installed on your system:

Ruby 
PostgreSQL 

## Getting Started

### Installation

1. Clone the repository:
https://github.com/Ken-Kabutu/phase-3-sinatra-react-project

2. Install required gems:

bundle install

### Database Setup

1. Create a new PostgreSQL database:

createdb fittech_gym_dev

2. Run database migrations:

rake db:migrate

### Running the server

* To start the backend server, run the following command:


ruby app.rb

* The server will be accessible at http://localhost:9292.

## API Endpoints

The FitTech Gym backend provides the following RESTful API endpoints:

* GET /users: Fetch all users

* GET /users/:id: Fetch a single user by ID

* POST /users: Create a new user

* DELETE /users/:id: Delete a user by ID

* GET /memberships: Fetch all memberships

* GET /memberships/:id: Fetch a single membership by ID

* POST /memberships: Create a new membership

* DELETE /memberships/:id: Delete a membership by ID

* GET /posts: Fetch all posts

* GET /posts/:id: Fetch a single post by ID

* POST /posts: Create a new post

* DELETE /posts/:id: Delete a post by ID

For detailed information about the request and response format for each endpoint, refer to the API documentation.

## Data Models

The FitTech Gym backend uses the following data models:

### User

The User model represents a gym member and includes the following attributes:

* 'name': The name of the user.
* 'email': The email address of the user.
* 'password_digest': The hashed password of the user.

### Membership

The Membership model represents a gym membership plan and includes the following attributes:

plan_name: The name of the membership plan.
pre_built_workouts: The number of pre-built workouts included in the plan.
gym_access: A boolean indicating if gym access is included.
class_access: A boolean indicating if class access is included.
studio_access: A boolean indicating if studio access is included.
meal_plans: A boolean indicating if meal plans are included.
personal_training_sessions: The number of personal training sessions included.
price: The price of the membership plan.