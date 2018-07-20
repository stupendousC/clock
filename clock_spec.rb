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

  it "will display leading zeros for numbers smaller than 10" do
    time = clock(11, 8, 14)
    expect(time).must_equal "11:08:14"

    time = clock(8, 11, 14);
    expect(time).must_equal "08:11:14"

    time = clock(11, 14, 8);
    expect(time).must_equal "11:14:08"
  end

  it "will raise an error when given an invalid argument" do
    expect {
      clock(25, 14, 8)
    }.must_raise ArgumentError

    expect {
      clock(11, 60, 8)
    }.must_raise ArgumentError

    expect {
      clock(11, 14, 60)
    }.must_raise ArgumentError
  end

  it "will raise an error when given a negative argument" do
    expect {
      clock(-1, 14, 8)
    }.must_raise ArgumentError

    expect {
      clock(11, -1, 8)
    }.must_raise ArgumentError

    expect {
      clock(11, 14, -1)
    }.must_raise ArgumentError
  end
end
