#TO RUN: rspec programming.rb -f doc
require 'rspec'

def longest_ordered_subsequence(array = [0])
  longest = 1
  count = 1
  (1..array.size-1).each do |i|
    count = array[i] > array[i-1] ? count+1 : 1
    longest = count if count > longest
  end
  return longest
end

# Programming: Given an unordered array of integers of length N > 0, calculate the length of the longest ordered (ascending from left [lower index] to right [higher index]) sub-sequence within the array.
describe "The length of the longest ordered sub-sequence within the array" do
  it "Should be >= 1" do
    expect(longest_ordered_subsequence([1,4,1,4,2,1,3,5,6,2,3,7])).to eq(4)
    expect(longest_ordered_subsequence([3,1,4,1,5,9,2,6,5,3,5])).to eq(3)
    expect(longest_ordered_subsequence([2,7,1,8,2,8,1])).to eq(2)
    expect(longest_ordered_subsequence([2])).to eq(1)
    expect(longest_ordered_subsequence([2,3,4])).to eq(3)
    expect(longest_ordered_subsequence([-22,3,4])).to eq(3)
    expect(longest_ordered_subsequence()).to eq(1)
    expect(longest_ordered_subsequence([])).to eq(1)
  end
end

