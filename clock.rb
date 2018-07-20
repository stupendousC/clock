# clock.rb

def clock(hours, minutes, seconds)
  time_fields = [hours, minutes, seconds]
  max_values = [23, 59, 59]

  time_fields.each_with_index do |field, index|
    if field > max_values[index]
      raise ArgumentError.new("#{field} is too large")
    elsif field < 0
      raise ArgumentError.new("#{field} is invalid (negative)")
    end
  end

  time_fields.map! do |field|
    if field < 10
      "0#{field}"
    else
      "#{field}"
    end
  end

  return "#{time_fields[0]}:#{time_fields[1]}:#{time_fields[2]}"
end
