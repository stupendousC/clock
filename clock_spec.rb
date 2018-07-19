# clock_spec.rb

require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'clock'

Minitest::Reporters.use!

describe "Clock" do
  it "can be called with hours, minutes and seconds as arguments" do
    time = clock(8, 14, 27)

    # the `clock` method must return a string
    expect(time).must_be_instance_of String
  end

  it "will return a string formatted in hh:mm:ss format" do
    time = clock(11, 14, 27)

    expect((time)).must_equal "11:14:27"
  end
end
