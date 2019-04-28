require_relative 'boot'
require 'rails/all'

Bundler.require(*Rails.groups)

module GeneratorApp
  class Application < Rails::Application
    config.generators do |g|
      g.orm              :active_record
      g.template_engine  :erb
      g.test_framework   :test_unit, fixture: false
      g.stylesheets      false
      g.javascripts      true
    end
  end
end
