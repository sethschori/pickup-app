# README

# Purpose

This is a simple pickups app to allow users to register, submit pickups, and
see all of their submitted pickups.

# Deployment instructions

- Make sure you have version 3.1.2 of ruby. You can user `rbenv`, `asdf`, or a
  similar version manager to keep this version of ruby isolated to this project.
- Make sure you have Postgres installed and available.
- If this is a Windows machine, you will need to add the `tzinfo-data` gem to
  `Gemfile` before `bundle install`, since I wasn't expecting this to run in a
  Windows environment.
- In the `pickup-app` directory do `bundle install` to install the project gems.
- Do `bin/rails s` to start the server.
- Navigate to `htpp://localhost:3000.`

# Core resources:

- web app: Rails
- database: PostgreSQL
- test framework: rspec
- test factories: factorybot
- user logins: passwordless
- email delivery: ActionMailer, letter_opener (dev)

# Iterative steps I followed to implement the features

- Setup a minimal version of Rails with these core resources.
- Create user model, using passwordless, that allows users to sign up and sign in.
- Create pickup model that belongs to user, with a date, status, and location.
  - Date and location are required.
  - Status defaults to initial value.
  - Status will be an enum with values of {submitted: 0, accepted: 1, in_progress: 2, completed: 3}
- Assume that admin users will have to use the console to change pickup statuses, since that's out of scope for these stories and can be built later.
- Add model test so that users can not submit a new pickup in the past.
- Add feature test for users to only be able to view their own pickups.
- Add Bootstrap and some basic styling.
- Add a navbar to the layout
- Polish UI so that uses can submit a pickup and view all of the pickups they've submitted.
- Write up a README for how to run the application.
- Nice to have, but probably out of scope: email the user whenever the status of one of their pickups changes so they don't have to login to check.

I did not get to the last step.
