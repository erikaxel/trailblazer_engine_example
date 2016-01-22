require_dependency 'trailblazer_engine_example/application_controller'

module TrailblazerEngineExample
  class ThingsController < ApplicationController
    def new
      form TrailblazerEngineExample::Thing::Create
        # This works
        # @form = Thing.new
    end

    def create
      run TrailblazerEngineExample::Thing::Create
    end
  end
end
