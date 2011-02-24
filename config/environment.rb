# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
CellsDemo::Application.initialize!

  Synthesis::AssetPackage.merge_environments = %w(staging production)
