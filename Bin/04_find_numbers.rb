# @param {Integer[]} nums
# @return {Integer}
def find_numbers(nums)
    num_strings = []
    nums.map { |n|  num_strings << n.to_s }
    count = 0
    num_strings.map {  |s| count += 1 if s.length % 2 == 0 }       
    count
end
