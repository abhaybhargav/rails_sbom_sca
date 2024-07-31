require_relative 'boot'

require 'rails/all'

module VulnerableRailsApp
  class Application < Rails::Application
    config.load_defaults 5.2
  end
end