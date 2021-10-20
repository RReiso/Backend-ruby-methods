# (5) The ruby array sort method can use a block to sort various arrays.
# The block must compare between two elements of the array, a and b.
# If a<b, it should evaluate to -1. If a==b, it should evaluate to 0.
# And if a>b, it should evaluate to 1.

# Add to this program. Add additional calls to book_array.sort that pass blocks.
# For your first call to sort, pass a block so that the array is sorted in order of title,
# and print out the array. For your second call to sort, pass a block so that the array
# is sorted in order of copies, and print out the array.

class Book
  attr_reader :author, :title, :count
  def initialize(author,title,count)
    @author = author
    @title = title
    @count = count
  end
  def to_s
    "author: #{author} title: #{title} count: #{count}"
  end
end

book_array = []
book_array.push(Book.new("Beatrice Potter","Peter Rabbit",25))
book_array.push(Book.new("Henry Fielding","Tom Jones",12))
book_array.push(Book.new("Bob Woodward","All the President's Men",30))

puts "Sorting alphabetically by author:"

new_array = book_array.sort do |a,b|
  author1 = a.author.downcase
  author2 = b.author.downcase
  author1 <=> author2
end
puts new_array

puts "Sorting alphabetically by title:"

new_array = book_array.sort do |a,b|
  title1 = a.title.downcase
  title2 = b.title.downcase
  title1 <=> title2
end
puts new_array

puts "Sorting by the number of copies:"

new_array = book_array.sort_by { |book| book.count }
puts new_array