puts false == false # true
puts true == !false # true

# && (AND) both conditions must be true
puts "AND Statement"
puts false && false
puts false && true
puts true && false
puts true && true

# || (OR) either side must be true One side must be true
puts "OR Statement"
puts false || false
puts false || true # true
puts true || false # true
puts true || true # true