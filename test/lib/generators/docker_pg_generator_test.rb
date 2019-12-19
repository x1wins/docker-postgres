require 'test_helper'
require 'generators/docker_pg/docker_pg_generator'

class DockerPgGeneratorTest < Rails::Generators::TestCase
  tests DockerPgGenerator
  destination Rails.root.join('tmp/generators')
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
