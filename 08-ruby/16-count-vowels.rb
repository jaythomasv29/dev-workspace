# create a method that counts vowels
# count_vowels(word), that takes in a string word and returns the number of vowels in the word. 
# Vowels are the letters a, e, i, o, u.
def count_vowels(word)
    i = 0
    totalVowels = 0
    while(i < word.length)
        if word[i] == 'a' || word[i] == 'e' || word[i] == 'i' || word[i] == 'o' || word[i] == 'u'
            totalVowels+=1
        end
    i+=1
    end
    return totalVowels
end
puts count_vowels("bootcamp")  # => 3
puts count_vowels("apple")     # => 2
puts count_vowels("pizza")     # => 2



