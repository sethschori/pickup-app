source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

gem "rails", "~> 7.0.3"

gem 'capybara'
gem 'passwordless', git: "https://github.com/mikker/passwordless.git", branch: "master"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "sprockets-rails" # The original asset pipeline for Rails

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "factory_bot_rails"
  gem "rails-controller-testing"
  gem "rspec-rails"
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
  gem "letter_opener"
end
