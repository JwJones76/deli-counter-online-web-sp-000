katz_deli = []

def line(line_array)
  if line_array.length == 0
    puts "The line is currently empty."
  else 
    current_line = "Your position is line:"
    line_array.each_with_index do |person, index|
      