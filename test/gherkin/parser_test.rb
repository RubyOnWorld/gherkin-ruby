require_relative '../test_helper'

module Gherkin
  describe 'Feature parsing' do
    before do
      @scenario = """Feature: My Feature
  In order to do something
  As a developer
  I want to be happy

  Background:
    Given something happens before anything else happens
    And more things happens before anything else happens

  Scenario: something happens
    Given something happens
    Then something cooler happens

  @javascript @wip
  Scenario: something else happens
    Given foo
    Then bar
"""

      parser  = Gherkin::Parser.new
      @result = parser.parse(@scenario)
    end

    it 'generates a nice tree' do
      @result.must_be_kind_of AST::Feature
      @result.line.must_equal 1

      background = @result.background
      background.must_be_kind_of AST::Background
      background.line.must_equal 6
      background.steps.first.keyword.must_equal 'Given'
      background.steps.first.name.must_equal 'something happens before anything else happens'
      background.steps.first.line.must_equal 7
      background.steps.last.keyword.must_equal 'And'
      background.steps.last.name.must_equal 'more things happens before anything else happens'
      background.steps.last.line.must_equal 8

      first_scenario = @result.scenarios.first
      first_scenario.must_be_kind_of AST::Scenario
      first_scenario.line.must_equal 10
      first_scenario.name.must_equal 'something happens'
      first_scenario.steps.first.keyword.must_equal 'Given'
      first_scenario.steps.first.name.must_equal 'something happens'
      first_scenario.steps.first.line.must_equal 11
      first_scenario.steps.last.keyword.must_equal 'Then'
      first_scenario.steps.last.name.must_equal 'something cooler happens'
      first_scenario.steps.last.line.must_equal 12

      last_scenario = @result.scenarios.last
      last_scenario.must_be_kind_of AST::Scenario
      last_scenario.line.must_equal 15
      last_scenario.name.must_equal 'something else happens'

      last_scenario.tags.first.name.must_equal 'javascript'
      last_scenario.tags.last.name.must_equal 'wip'

      last_scenario.steps.first.keyword.must_equal 'Given'
      last_scenario.steps.first.name.must_equal 'foo'
      last_scenario.steps.first.line.must_equal 16
      last_scenario.steps.last.keyword.must_equal 'Then'
      last_scenario.steps.last.name.must_equal 'bar'
      last_scenario.steps.last.line.must_equal 17
    end
  end
end
