def clock(hh, mm ,ss)
  # Takes in 3 arguments of integers, and returns as a string of HH:MM:SS
  
  [hh, mm, ss].each do |arg|
    # check if all arguments are of Integer type
    if arg.class != Integer
      raise ArgumentError
    end
  end
  
  # process hh
  if hh < 1 || hh > 12
    raise ArgumentError
  elsif hh < 10
    hh_str = "0" + hh.to_s
  else 
    hh_str = hh.to_s
  end
  
  # process mm & ss  
  mm_ss_strs = []
  [mm, ss].each_with_index do |arg, index|
    if arg < 0 || arg > 59
      raise ArgumentError
    elsif arg < 10
      mm_ss_strs[index] = "0" + arg.to_s
    else 
      mm_ss_strs[index] = arg.to_s
    end
  end

  # assemble final string
  mm_str = mm_ss_strs[0]
  ss_str = mm_ss_strs[1]
  return "#{hh_str}:#{mm_str}:#{ss_str}"
end


