source "https://rubygems.org"
ruby "2.3.0"

gem "rails", "4.2.6"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.1.0"
gem "jquery-rails"
gem "jquery-ui-rails"
gem "turbolinks"
gem "active_model_serializers"
gem "sdoc", "~> 0.4.0", group: :doc
gem "devise"
gem "twitter-bootstrap-rails"
gem "kaminari"
gem "font-awesome-rails"

group :development do
  gem "better_errors"
  gem "binding_of_caller"
  gem "pry-rails"
  gem "quiet_assets"
end

group :test, :development do
  gem "ffaker"
  gem "sqlite3"
  gem "pry"
  gem 'spring-commands-rspec'
end

group :test do
  gem "codeclimate-test-reporter", require: nil
  gem "selenium-webdriver"
  gem "database_cleaner"
  gem "minitest-focus"
  gem "minitest-rails-capybara"
  gem "rspec-rails"
end

group :production do
  gem "pg"
  gem "rails_12factor"
end
