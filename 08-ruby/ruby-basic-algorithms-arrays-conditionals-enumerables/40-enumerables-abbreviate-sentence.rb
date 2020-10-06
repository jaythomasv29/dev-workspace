# Write a method abbreviate_sentence that takes in a sentence string 
# and returns a new sentence where every word longer than 4 characters has all of it's vowels removed.

def abbreviate_sentence(sent)
# if the word within sentence is greater than 4
# loop through each character, with index and remove the vowels
filteredSent = [] # store in new array of the filtered sentence
    sentArr = sent.split(" ")
    sentArr.each do |word| 
        if word.length > 4 # if the word is longer than 4 characters
            p word
            word = word.delete('aeiou') # loop through and remove all vowels using .delete() method
        end
        filteredSent.push(word)
    end
    return filteredSent.join(" ")
end

# puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
# puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"



#  solution 2
# Write a method abbreviate_sentence that takes in a sentence string 
# and returns a new sentence where every word longer than 4 characters has all of it's vowels removed.

def abbreviate_sentence2(sentence)
    sentenceArr = sentence.split(" ") # split at the space to get an array of words
    abbrevSentence = []
    # iterate and print each word
    sentenceArr.each do |word|
        if word.length > 4
        word = removeVowels(word) # change value of word to delete vowels
        end 
    abbrevSentence.push(word)
    end
    return abbrevSentence.join(" ")
end

# helper function
def removeVowels(string)
    return string.delete('aeiou')
end

p abbreviate_sentence2('hello world today is a coding day') # 'hll wrld tdy is a cdng day'
p abbreviate_sentence2('follow the yellow brick road') # 'fllw the yllw brck road'
