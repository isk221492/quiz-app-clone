source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem "rails",           "7.0.4"
gem "bcrypt",          "3.1.18"
gem "faker",           "2.21.0"
gem 'kaminari'
gem "image_processing", "1.12.2"
gem 'materialize-sass', "1.0.0"
gem 'material_icons',   "4.0.0"
gem "sassc-rails",     "2.1.2"
gem "sprockets-rails", "3.4.2"
gem "importmap-rails", "1.1.0"
gem "turbo-rails",     "1.1.1"
gem "stimulus-rails",  "1.0.4"
gem "jbuilder",        "2.11.5"
gem "puma",            "5.6.4"
gem "bootsnap",        "1.12.0", require: false
gem "rmagick",         "5.1.0"
gem "pg",              "1.3.5"
gem 'dotenv-rails'

# https://blog.to-ko-s.com/rails-api-get/
gem 'httpclient'
# 漢字カナ変換
gem 'mechanize'

group :development, :test do
  gem "debug",   "1.5.0", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "web-console", "4.2.0"
end

group :test do
  gem "capybara",                 "3.37.1"
  gem "selenium-webdriver",       "4.2.0"
  gem "webdrivers",               "5.0.0"
  gem "rails-controller-testing", "1.0.5"
  gem "minitest",                 "5.15.0"
  gem "minitest-reporters",       "1.5.0"
  gem "guard",                    "2.18.0"
  gem "guard-minitest",           "2.4.6"
end

group :production do
  gem "aws-sdk-s3", "1.114.0", require: false
  gem "redis", "~> 4.0"
end

# Windows ではタイムゾーン情報用の tzinfo-data gem を含める必要があります
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]