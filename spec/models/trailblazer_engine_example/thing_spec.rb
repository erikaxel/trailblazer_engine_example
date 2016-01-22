require 'rails_helper'

module TrailblazerEngineExample
  RSpec.describe Thing, type: :model do
    it 'persists' do
      thing = TrailblazerEngineExample::Thing::Create.(trailblazer_engine_example_thing: {name: 'thing1'}).model

      expect(thing.persisted?).to be_truthy
      expect(thing.name).to eq 'thing1'
    end
  end
end
