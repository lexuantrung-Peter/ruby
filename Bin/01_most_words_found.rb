# @param {String[]} sentences
# @return {Integer}
def most_words_found(sentences)
    max = 0
    sentences.each do |s|
        length = s.split(' ').length 
        max = length if max < length
    end
    max
end
