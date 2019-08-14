# TEST for clock_spec.rb
require_relative '../lib/clock'

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

# BIG IDEA: use DESCRIBE block
describe "DOES CLOCK() WORK?" do
  
  # Ada prefers to have individual ARRANGE/ACT w/in each IT block, they get their own sample variables
  
  #ARRANGE#     prep for code to be tested
  #ACT#         sample run of the code 
  #ASSERT#    test against what we EXPECT  

  # LITTLE IDEAS: use IT block, inside DESCRIBE
  it "I WANT A STRING" do
    result = clock(1, 23, 45)
    expect(result).must_be_instance_of String
  end

  it "I WANT HH:MM:SS FORMAT" do
    result = clock(12, 23, 45)
    expect(result).must_equal "12:23:45"
  end

  it "CATCHES HH < 1" do
    result = clock(0,10,30)
    expect result.must_raise ArgumentError
  end

  it "CATCHES HH > 12" do
    result = clock(13, 1, 2)
    expect result.must_raise ArgumentError 
  end

  it "CATCHES MM < 0" do
    result = clock(1, -5, 3)
    expect result.must_raise ArgumentError 
  end

  it "CATCHES MM > 59" do
    result = clock(1, 200, 3)
    expect result.must_raise ArgumentError 
  end

  it "CATCHES SS < 0" do
    result = clock(1, 5, -3)
    expect result.must_raise ArgumentError 
  end

  it "CATCHES SS > 59" do
    result = clock(1, 20, 300)
    expect result.must_raise ArgumentError 
  end
end

puts "\n\n!!! BURNING QUESTION !!!"
puts "Does RED mean something bad?  Maybe I'm not reporting it the exact right way?  Shouldn't it have been GREEN b/c I got what I expected?\n\n"