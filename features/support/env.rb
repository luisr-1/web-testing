require 'site_prism'
require 'cucumber'
require 'capybara'
require 'selenium-webdriver'
require 'dotenv'
require 'rspec'
require_relative 'page_initialization.rb'

Dotenv.load('.env')

URL = ENV['URL']

World(PageInitialization)

Capybara.register_driver :selenium do |driver|
  Capybara::Selenium::Driver.new(driver, :browser => :chrome)
end

Capybara.configure do |config|
  config.default_driver = :selenium
  #config.app_host = URL
  Capybara.page.driver.browser.manage.window.maximize
end

Capybara.default_max_wait_time = 10

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
