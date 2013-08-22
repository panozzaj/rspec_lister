Feature: Running rspec_lister on the command-line
  As a Ruby developer
  In order to see what RSpec specs I have in my project
  I want to run the rspec_lister command

  Scenario: Happy path - Running plain
    Given I am in the sample Ruby app
    When I run `rspec_lister`
    Then the output should contain:
    """
    ./spec/lib/calculator_spec.rb:6
    ./spec/lib/calculator_spec.rb:10
    ./spec/lib/calculator_spec.rb:14
    ./spec/lib/calculator_spec.rb:18
    ./spec/lib/coffee_mug_spec.rb:7
    """

  Scenario: Happy path - Running with a filter
    Given I am in the sample Ruby app
    When I run `rspec_lister spec/lib/calculator_spec.rb`
    Then the output should contain:
    """
    ./spec/lib/calculator_spec.rb:6
    ./spec/lib/calculator_spec.rb:10
    ./spec/lib/calculator_spec.rb:14
    ./spec/lib/calculator_spec.rb:18
    """
    And the output should not contain "./spec/lib/coffee_mug_spec.rb:7"
