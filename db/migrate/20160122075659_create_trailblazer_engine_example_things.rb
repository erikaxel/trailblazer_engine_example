class CreateTrailblazerEngineExampleThings < ActiveRecord::Migration
  def change
    create_table :trailblazer_engine_example_things do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
