# clock.rb

def scrub(value, upper_bound)
  if value < 0 || value > upper_bound
    raise ArgumentError, "Invalid value #{value}"
  elsif value < 10
    value = "0#{value}"
  end

  return value
end

# method called clock
# 3 args: hours, minutes, seconds
def clock(hours, minutes, seconds)
  hours = scrub(hours, 23)
  minutes = scrub(minutes, 59)
  seconds = scrub(seconds, 59)

  return "#{hours}:#{minutes}:#{seconds}"
end