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

  it "pads numbers with leading zeros" do
    # Arrange
    hours = 8
    minutes = 4
    seconds = 3

    # Act
    result = clock(hours, minutes, seconds)

    # Assert
    expect(result).must_equal "08:04:03"
  end

  it "handles 2-digit numbers" do
    # Arrange
    hours = 10
    minutes = 22
    seconds = 35

    # Act
    result = clock(hours, minutes, seconds)

    # Assert
    expect(result).must_equal "10:22:35"
  end

  it "doesn't allow negative numbers" do
    # Arrange
    values = [
      {hours: -1, minutes: 1, seconds: 1},
      {hours: 1, minutes: -1, seconds: 1},
      {hours: 1, minutes: 1, seconds: -1},
    ]

    # Act & Assert
    values.each do |time|
      expect {
        clock(
          time[:hours],
          time[:minutes],
          time[:seconds]
        )
      }.must_raise ArgumentError
    end
  end

  it "doesn't allow too big numbers" do
    # Arrange
    values = [
      {hours: 24, minutes: 59, seconds: 59},
      {hours: 23, minutes: 60, seconds: 59},
      {hours: 23, minutes: 59, seconds: 60},
    ]

    # Act & Assert
    values.each do |time|
      # puts "Calling clock with #{time}"
      expect {
        clock(
          time[:hours],
          time[:minutes],
          time[:seconds]
        )
      }.must_raise ArgumentError
    end
  end
end