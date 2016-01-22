module TrailblazerEngineExample
  class Thing < ActiveRecord::Base
    class Create < Trailblazer::Operation
      include Model
      model Thing, :create

      contract do
        property :name
        validates :name, presence: true
      end

      def process(params)
        validate(params[:thing]) do |f|
          f.save
        end
      end
    end
  end
end
