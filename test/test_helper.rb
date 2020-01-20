ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  def after_teardown
    Neo4j::ActiveBase.current_session.query('MATCH (n) DETACH DELETE n')
    super
  end
end
