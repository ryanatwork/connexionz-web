source 'http://rubygems.org'

gem 'rails', '3.1.0'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

gem 'connexionz'
gem 'haml'
gem 'jquery-rails'
gem 'patron'


platforms :jruby do
  gem 'jruby-openssl'
end

group :production do
  gem 'pg'
  gem 'thin'
end


group :development, :test do
  gem 'rspec-rails'
  gem 'sqlite3'
end

group :development do
  gem 'autotest'
end

group :test do
  gem 'mocha'
  gem 'simplecov'
end

