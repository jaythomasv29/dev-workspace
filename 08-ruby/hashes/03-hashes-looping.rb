# Hash Enumerables
# .each
# .each_key
# .each_value

pizza = {
  "style" => "Chicago",
  "slices" => 16,
  "diameter" => 9,
  "toppings" => ["mushroom", "peppers", "sausage"],
  "best_seller" => true,
}

pizza.each do |key, value|
  p key
  p value
  p "----"
end

pizza.each_key do |k|
  p k
end

pizza.each_value do |val|
  p val
end
