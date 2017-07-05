source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.4.1'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.1'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'

gem 'jquery-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
gem 'sdoc', '~> 0.4.0',          group: :doc

gem 'rake'
gem 'simple_form'
gem 'nokogiri'
gem 'seedbank'
gem 'sorcery'
gem 'faraday'
gem 'figaro'
gem 'carrierwave'
gem 'mini_magick'
gem 'fog-aws'
#gem 'rails_12factor', group: :production
gem 'levenshtein'
gem 'whenever', require: false
gem 'http_accept_language'
gem 'routing-filter'
gem 'rollbar'
gem 'newrelic_rpm'

group :development, :test do
  gem 'rspec-rails', '~> 3.5'
  gem 'capybara', '~> 2.13'
  gem 'factory_girl_rails'
end
