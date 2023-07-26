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

### Fetch Example

Your React app should make fetch requests to your Sinatra backend! Here's an
example:

```js
fetch("http://localhost:9292/test")
  .then((r) => r.json())
  .then((data) => console.log(data));
```

## Project Tips

- This project is intended to focus more on the backend than the frontend, so
  try and keep the React side of things relatively simple. Focus on working with
  Active Record and performing CRUD actions. What are some interesting queries you can write? What kinds of questions can you ask of your data?
- Once you have a project idea, come up with a domain model and decide what
  relationships exist between the models in your application. Use a tool like
  [dbdiagram.io][] to help visualize your models.
- Decide on your API endpoints. What data should they return? What kind of CRUD
  action should they perform? What data do they need from the client?
- Use [Postman][postman download] to test your endpoints.
- Use `binding.pry` to debug your requests on the server. It's very helpful to use a
  `binding.pry` in your controller within a route to see what `params` are being
  sent.
- Use the [Network Tab in the Dev Tools][network tab] in the frontend to debug
  your requests.

## Resources

- [create-react-app][]
- [dbdiagram.io][]
- [Postman][postman download]

[create-react-app]: https://create-react-app.dev/docs/getting-started
[create repo]: https://docs.github.com/en/get-started/quickstart/create-a-repo
[dbdiagram.io]: https://dbdiagram.io/
[postman download]: https://www.postman.com/downloads/
[network tab]: https://developer.chrome.com/docs/devtools/network/
