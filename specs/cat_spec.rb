require "minitest/autorun"
require "minitest/reporters"

require_relative "../lib/cat"

describe "cat" do
  it "it lands on it's feet" do
    #arrange - set up variables (we give them values)

    fall_height = 18
    number_of_paws = 4

    #act - calling the method (the thing we are testing)

    value = drop(fall_height, number_of_paws)

    #assert - validating (using expect) that our input gives the expected output

    #we want the cat to 'meow' that it's okay

    expect(value).must_equal "meow"
  end

  it "has four or less paws" do
    fall_height = 18
    number_of_paws = 7

    expect {
      drop(fall_height, number_of_paws)
    }.must_raise ArgumentError
  end
end
