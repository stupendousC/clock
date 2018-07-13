# clock_spec.rb

require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'clock'

Minitest::Reporters.use!

describe "Clock" do
  it "will return a string" do
    # the `clock` method must return a string
    expect(clock() ).must_be_instance_of String
  end
end
