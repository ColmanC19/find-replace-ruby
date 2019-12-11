require('./lib/find_replace')

puts "enter a sentence"
input = gets
new_replace = Replace.new(input)

puts "enter a word to find"
finds = gets.chomp
puts "enter a word to replace"
replaces = gets.chomp
puts new_replace.replace(finds, replaces)
