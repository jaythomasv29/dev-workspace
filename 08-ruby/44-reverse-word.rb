def reverse_word(sentence)
  splitted = sentence.split(" ")
  splitted.each do |word|
    p word
  end
end

reverse_word("hello world")
