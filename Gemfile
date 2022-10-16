source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'bootsnap', '>= 1.4.4', require: false                         # Reduces boot times through caching; required in config/boot.rb
gem 'pg', '~> 1.1'                                                 # Use postgresql as the database for Active Record
gem 'puma', '~> 5.0'                                               # Use Puma as the app server
gem 'rails', '~> 6.1.7'                                            # Rails version
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby] # Windows does not include zoneinfo files, so bundle the tzinfo-data gem

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]              # Gets a debugger console
  gem 'dotenv-rails', '~> 2.8', '>= 2.8.1'                         # Manage ENV variables
  gem 'factory_bot_rails', '~> 6.2'                                # Create object for testing purposes
  gem 'rspec-rails', '~> 6.0'                                      # RSpec testing framework
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'spring'                                                     # Keep application running in the background
end
