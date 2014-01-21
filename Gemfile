source 'https://rubygems.org'

ruby '2.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.1'
gem 'pg'
gem 'slim-rails'
gem 'skim'
gem 'newrelic_rpm'

gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'
gem 'unicorn'

group :assets do
  gem 'sass-rails', '~> 4.0.0'
  gem 'uglifier', '>= 1.3.0'
  gem 'coffee-rails', '~> 4.0.0'
  gem 'compass-rails'
  gem 'sprockets', '~> 2.0'
end

group :development do
  gem 'hirb'
end

group :development, :test do
  gem 'cucumber-rails', :require => false
  gem 'rspec-rails', '~> 3.0.0.beta'
  gem 'factory_girl_rails'
end

group :test do
  gem 'test-unit'
  gem 'database_cleaner'
  gem 'shoulda-matchers'
end

group :production do
  gem 'rails_12factor'
  gem 'dynopoker'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

