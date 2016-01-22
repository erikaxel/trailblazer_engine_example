require 'rails_helper'

module TrailblazerEngineExample
  RSpec.describe Thing, type: :model do
    it 'persists' do
      thing = TrailblazerEngineExample::Thing::Create.(thing: {name: 'thing1'}).model

      expect(thing.persisted?).to be_truthy
      expect(thing.name).to eq 'thing1'
    end
  end
end
