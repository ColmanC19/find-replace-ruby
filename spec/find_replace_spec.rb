require('rspec')
require('find_replace')

describe('#find_replace') do
  # it('returns true if string includes another string') do
  #   new_replace = Replace.new("cats and dogs")
  #   expect(new_replace.replace("cats")).to(eq(true))
  # end
  it('returns false if string does not include another string') do
    new_replace = Replace.new("cats and dogs")
    expect(new_replace.replace("chickens", "birds")).to(eq("does not include string"))
  end
  it('removes user_input from initial_string') do
    new_replace = Replace.new("cats and cats and cats or cats")
    expect(new_replace.replace("cats", "birds")).to(eq("birds and birds and birds or birds"))
  end
end
