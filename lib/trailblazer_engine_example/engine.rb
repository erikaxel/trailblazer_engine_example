require 'trailblazer'
require 'trailblazer/operation/model'
require 'simple_form'

module TrailblazerEngineExample
  class Engine < ::Rails::Engine
    isolate_namespace TrailblazerEngineExample

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), '../../app/concepts/**/*.rb')) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end

    config.to_prepare &method(:activate).to_proc

    config.generators do |g|
      g.test_framework :rspec
    end
  end
end
