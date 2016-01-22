require_dependency 'trailblazer_engine_example/application_controller'

module TrailblazerEngineExample
  class ThingsController < ApplicationController
    include Trailblazer::Operation::Controller

    def new
      form TrailblazerEngineExample::Thing::Create
    end

    def create
      run TrailblazerEngineExample::Thing::Create
    end
  end
end
