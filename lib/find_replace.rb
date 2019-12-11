class Replace
  def initialize(initial_string)
    @initial_string = initial_string.downcase
  end
  def replace(find, replace)
    find = find.downcase
    replace = replace.downcase
    initial_array = @initial_string.split(" ")
    indicies = []
    if initial_array.include? find
      find_count = initial_array.count(find)
      find_count.times() do

        find_index = initial_array.index(find)
        indicies.push(find_index + indicies.length)
        initial_array.slice! find_index
      end
      indicies.each do |find_index|
        initial_array.insert(find_index, replace)
        puts find_index
      end
      initial_array.join(" ").capitalize
    else
      "#{@initial_string.chomp} does not include string '#{find}'"

    end

  end
end
