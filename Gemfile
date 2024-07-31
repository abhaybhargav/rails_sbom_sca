source 'https://rubygems.org'

gem 'rails', '5.2.3'  # An older version of Rails with known vulnerabilities
gem 'sqlite3', '~> 1.3.6'
gem 'puma', '3.12.0'  # A version with known vulnerabilities
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false

# Intentionally vulnerable gems
gem 'nokogiri', '1.8.0'  # Known vulnerabilities
gem 'rack', '2.0.7'  # Known vulnerabilities
gem 'loofah', '2.2.3'  # Known vulnerabilities

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]