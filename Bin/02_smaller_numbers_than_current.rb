# @param {Integer[]} nums
# @return {Integer[]}

def smaller_numbers_than_current(nums)
    out_nums = []
    nums.each do |n|
        count = 0
        nums.each do |m|
            count += 1 if m < n
        end
        out_nums << count
    end
    out_nums  
end
