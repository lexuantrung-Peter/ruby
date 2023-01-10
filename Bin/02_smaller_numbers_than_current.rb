# @param {Integer[]} nums
# @return {Integer[]}

def smaller_numbers_than_current(nums)
    outNums = []
    nums.each do |n|
        count = 0
        nums.each do |m|
            if m < n 
                count += 1
            end
        end
        outNums << count

    end
    outNums
    
end
