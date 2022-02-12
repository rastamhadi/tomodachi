require_relative "boot"

require "rails/all"
require 'neo4j/railtie'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Tomodachi
  class Application < Rails::Application
    config.generators do |g|
      g.orm :neo4j
    end

    # Configure where to connect to the Neo4j DB
    # Note that embedded db is only available for JRuby
    # config.neo4j.session.type = :http
    # config.neo4j.session.url = 'http://localhost:7474'
    #  or
    # config.neo4j.session.type = :bolt
    # config.neo4j.session.url = 'bolt://localhost:7687'
    #  or
    # config.neo4j.session.type = :embedded
    # config.neo4j.session.path = Rails.root.join('neo4j-db').to_s

    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
