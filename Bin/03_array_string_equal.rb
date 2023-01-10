# @param {String[]} word1
# @param {String[]} word2
# @return {Boolean}
def array_strings_are_equal(word1, word2)
    # array1 = word1.split(' ')
    # array2 = word2.split(' ')
    # array1.each_with_index do |c, index|

    # end
    array1 = []
    word1.each do |w| 
        array1.concat(w.to_s.split(''))
    end

    array2 = []
    word2.each do |w|
        array2.concat(w.to_s.split(''))
    end
    puts("array1 = #{array1}")
    puts("array2 = #{array2}")
    return array1 == array2

    
end
