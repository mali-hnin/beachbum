source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Basic gems
gem 'rails', '~> 5.1.3'
gem 'pg', '~> 0.18' # Use postgresql as the database for Active Record
gem 'puma', '~> 3.7' # Use Puma as the app server
gem 'uglifier', '>= 1.3.0' # Use Uglifier as compressor for JavaScript assets
gem 'coffee-rails', '~> 4.2' # Use CoffeeScript for .coffee assets and views
gem 'turbolinks', '~> 5' # Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'jbuilder', '~> 2.5' # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby] # Windows does not include zoneinfo files, so bundle the tzinfo-data gem

# Test gems
group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'better_errors'
  gem 'binding_of_caller'
end

# Development gems
group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Front end gems
gem 'sass-rails', '~> 5.0' # Use SCSS for stylesheets
gem 'bootstrap-sass'
gem 'jquery-rails'

gem 'font-awesome-sass'

gem 'attachinary', github: 'assembler/attachinary'
gem 'jquery-fileupload-rails'



gem 'nokogiri'

# Specific gems
gem 'geocoder'
gem 'gmaps4rails'
gem 'cloudinary'

source 'https://rails-assets.org' do
  gem "rails-assets-underscore"
end

