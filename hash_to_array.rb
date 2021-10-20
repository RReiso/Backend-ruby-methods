# (3) Write a program that collects 5 keys and 5 values from the user,
# and stores them in a hash. Write a function that accepts the hash as
# optional parameters and prints out an array of keys and an array of values.
# Call the function within your program so you know it works.
# (Question: Can you find online information on Ruby hash methods that
# will help with this function?) Call this program hash_to_array.rb.

def hash_to_array
  print_rules
  user_hash = {}
  5.times do
    key = ''
    loop do
      puts 'Enter a key name:'
      key = gets.chomp
      break unless user_hash.keys.include?(key)
    end
    puts 'Enter a value:'
    value = gets.chomp
    user_hash[key] = value
  end
  print_hash(user_hash)
end

def print_rules
  text = <<~HEREDOC
    One by one you will be asked to enter 5 keys and 5 values.
    If you enter the same key name more than once you will be prompted
    to enter a key name again until you provide a different key name!
  HEREDOC
  puts text
end

def print_hash(hash = nil)
  if hash
    print hash.empty? ? "Empty collection!\n" : "#{hash.keys}\n#{hash.values}\n"
  else
    puts 'No hash!'
  end
end

hash_to_array
print_hash({})
print_hash
