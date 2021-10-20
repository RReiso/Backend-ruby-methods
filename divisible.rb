# (1) Write a method that returns in an array all the numbers between 1 and 100
# that are divisible by 2 or 3 or 5. Then call the method in your program and 
# print out what it returns. Call the program divisible.rb.

def divisible_by_2_3_5
  (1..100).filter { |num| num % 2 == 0 || num % 3 == 0 || num % 5 == 0 }
end

divisible_by_2_3_5.each { |num| print "#{num} " }
puts
