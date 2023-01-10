# @param {Integer[]} nums
# @return {Integer}
def find_numbers(nums)
    numStrings = []
    nums.each do |n| 
        numStrings << n.to_s
    end

    count = 0
    numStrings.each do |s|
        if s.length % 2 == 0 
            count += 1
        end
    end
    count
    
end
