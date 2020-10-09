(1..3).each do |num|
  # p num
  (1..5).each do |num2|
    puts "#{num}      #{num2}"
  end
end

# nested loops
arr = ["a", "b", "c", "d", "e"]

# unique pairs only using nested loop
arr.each_with_index do |ele1, idx1|
  arr.each_with_index do |ele2, idx2|
    if idx2 > idx1
      p "#{ele1}#{ele2}"
    end
  end
end
