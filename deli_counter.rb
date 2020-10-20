katz_deli = []

def line(line_array)
  if line_array.length == 0
    puts "The line is currently empty."
  else 
    current_line = "Your position is line:"
    line_array.each_with_index do |person, index|
      current_line.concat("#{index + 1}. #{person}")
    end
    puts current_line
  end
end

def take_a_number()

