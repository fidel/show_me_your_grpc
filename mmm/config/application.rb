require_relative "boot"

require "rails"
require "active_model/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_view/railtie"
require "rails/test_unit/railtie"

Bundler.require(*Rails.groups)

module Mmm
  class Application < Rails::Application
    config.load_defaults 7.0

    config.paths.add "../messages", eager_load: true

    config.generators.system_tests = nil
  end
end
