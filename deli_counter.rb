 katz_deli = []
  def position_in_line(katz_deli, name)	  def position_in_line(katz_deli, name)
    #Returns customer's position in queue	    #Returns customer's position in queue
    katz_deli.find_index(name) += 1	    katz_deli.find_index(name) += 1
  end	  end
  def take_a_number(katz_deli, user_input)	  def take_a_number(katz_deli, user_input)
    puts "Katz Deli, may I take your name, please?"	    puts "Katz Deli, may I take your name, please?"
    user_input = gets.chomp	    user_input = gets.chomp
    name = user_input	    name = user_input
    katz_deli << name	    katz_deli << name
    position_in_line(katz_deli, name)	    position_in_line(katz_deli, name)
    puts "Welcome, #{name}. You are number #{position_in_line} in line."	    puts "Welcome, #{name}. You are number #{position_in_line} in line."
  end	  end
  def line(katz_deli)	  def line(katz_deli)
    if katz_deli[0] == " " || katz_deli[0].nil?	    if katz_deli[0] == " " || katz_deli[0].nil?
      puts "There is nobody waiting to be served!"	      puts "There is nobody waiting to be served!"
    else	    else
      spots_in_queue = []	      spots_in_queue = []
      number = 1	      number = 1
      katz_deli.each do |name|	      katz_deli.each do |name|
        spots_in_queue << "#{number}. #{name}"	        spots_in_queue << "#{number}. #{name}"
        number += 1	        number += 1
      puts "The line is currently: #{spots_in_queue.join(" ")}"	      puts "The line is currently: #{spots_in_queue.join(" ")}"
      end	      end
    end	    end
  end	  end
  def now_serving(katz_deli)	  def now_serving(katz_deli)
    if katz_deli[0] == " " || katz_deli[0].nil?	    if katz_deli[0] == " " || katz_deli[0].nil?
      puts "There is nobody waiting to be served!"	      puts "There is nobody waiting to be served!"
    else	    else
      puts "Currently serving #{katz_deli[0]}."	      puts "Currently serving #{katz_deli[0]}."
      katz_deli >> katz_deli[0]
    end	    end
    katz_deli >> katz_deli[0]	
  end