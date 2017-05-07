# Load the Rails application.
require_relative 'application'
require 'carrierwave/orm/activerecord' #activerecord needs to be required or an error will prevent an image from being uploaded

# Initialize the Rails application.
Rails.application.initialize!
