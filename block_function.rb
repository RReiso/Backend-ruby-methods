# (6) Create a program block_function.rb. It should have a function do_calc that calls
# a block using a yield statement. The yield statement will pass the numbers 7 and 9
# to a block, and then will print out the result. Call the do_calc function twice in
# your program. The first time, pass a block that adds the two numbers. The second time,
# pass a block that multiplies the two numbers. Your program should print out 16 and 63.

def do_calc
  yield 7, 9
end

p do_calc { |a, b| a + b }
p do_calc { |a, b| a * b }
