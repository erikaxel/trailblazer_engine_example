module TrailblazerEngineExample
  class Thing < ActiveRecord::Base
    class Create < Trailblazer::Operation
      include Model
      model Thing, :create

      contract do
        model Thing
        property :name
        validates :name, presence: true
      end

      def process(params)
        validate(params[:trailblazer_engine_example_thing]) do |f|
          f.save
        end
      end
    end
  end
end
