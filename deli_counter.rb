  
  katz_deli = []

  def position_in_line(katz_deli, name)
    #Returns customer's position in queue
    
  end

  def take_a_number(katz_deli, user_input)
    puts "Katz Deli, may I take your name, please?"
    user_input = gets.chomp
    name = user_input
    katz_deli << name
    position_in_line(katz_deli, name)
    puts "Welcome, #{name}. You are number #{position_in_line} in line."
  end

  def line(katz_deli)
    if katz_deli[0] == " " || katz_deli[0].nil?
      puts "The line is currently empty."
    else
      spots_in_queue = []
      number = 1
      katz_deli.each do |name|
        spots_in_queue << "#{number}. #{name}"
        number += 1
      puts "The line is currently: #{spots_in_queue.join(" ")}"
      end
    end
  end

  def now_serving(katz_deli)
    if katz_deli[0] == " " || katz_deli[0].nil?
      puts "The line is currently empty."
    else
      puts "Currently serving #{katz_deli[0]}."
      katz_deli >> katz_deli[0]
    end
  end