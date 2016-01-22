Trailblazer Engine example

Example of using Trailblazer with a Rails Engine

Steps to re-create this repository:
1. Setup new project:
 ```rails plugin new trailblazer_engine_example --mountable -T --dummy-path=spec/dummy```
2. Edit gemspec to add rspec and trailblazer gems
3. Edit engine.rb to add initializer and trailblazer 'require'
4. Install RSpec: 
 ```bundle install```
 ```rails generate rspec:install```
5. Made edits to spec/rails_helper.rb according to: http://blog.honeybadger.io/rails4-engine-controller-specs/ 
This is necessary to ensure rspec runs.
6. Created thing: ```rails g model thing name:string```
7. Created concepts and operations for thing.
8. Setup db for test:```rake db:migrate RAILS_ENV=test```
9. Run ```rspec``` for tests or ```spec/dummy/bin/rails s``` for running test app
