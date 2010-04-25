# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Example::Application.initialize!

#Haml options
Haml::Template.options[:format] = :html5
