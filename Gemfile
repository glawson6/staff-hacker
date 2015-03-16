source 'https://rubygems.org'
ruby "2.1.2"
gem 'rails', '4.2.0'
gem 'rails-api'
gem 'pg'

gem 'responders', '~> 2.0'

# To use ActiveModel has_secure_password
gem 'rack-cors', :require => 'rack/cors'
#gem 'puma'

# To use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano', :group => :development

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

gem 'bcrypt'
gem 'httparty'
gem 'json'
gem 'awesome_print'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

group :production, :staging do
  gem 'rails_12factor'
end
group :development do
  gem 'spring'
  gem "rails-erd"
end

group :development, :test do
  gem 'rspec-rails', '~> 3.0'
  gem 'pry'
  gem 'railroady'
end

group :test do
  gem 'selenium-webdriver', '2.35.1'
  gem 'capybara', '2.2.0'
  gem 'factory_girl_rails', '4.2.0'
  gem 'faker'
end
