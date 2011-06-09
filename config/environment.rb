# Load the rails application
require File.expand_path('../application', __FILE__)
Dir.glob(File.join(Rails.root, 'app/metal/*')).each do |file|
  require file
end

# Initialize the rails application
Metaltest::Application.initialize!
