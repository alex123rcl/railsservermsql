source "https://rubygems.org"

gem "rails", "~> 7.2.2"
gem 'mysql2', '>= 0.5.0'
gem 'shoulda-matchers'
gem 'capybara'
gem "sprockets-rails"
gem "sqlite3", ">= 1.4"
gem "puma", ">= 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "bootsnap", require: false

group :development, :test do
  gem 'rspec-rails', '~> 7.0.0'  # Elige esta línea y elimina la otra
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
end

group :development do
  gem "web-console"
  gem "error_highlight", ">= 0.4.0", platforms: [:ruby]
end

group :test do
  # Puedes dejar este grupo vacío o agregar otras gemas de test aquí
end


