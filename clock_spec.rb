# clock_spec.rb

require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'clock'

Minitest::Reporters.use!

# Describe blocks group tests
describe "clock" do

  # It blocks are tests
  it "returns a string" do
    # Arrange
    hours = 8
    minutes = 14
    seconds = 3

    # Act
    result = clock(hours, minutes, seconds)

    # Assert
    expect(result).must_be_instance_of String
  end

  it "produces the correct time" do
    # Arrange
    hours = 8
    minutes = 14
    seconds = 3

    # Act
    result = clock(hours, minutes, seconds)

    # Assert
    expect(result).must_equal "08:14:03"
  end

  it "handles a different time" do
    # Arrange
    hours = 10
    minutes = 22
    seconds = 35

    # Act
    result = clock(hours, minutes, seconds)

    # Assert
    expect(result).must_equal "10:22:35"
  end
end