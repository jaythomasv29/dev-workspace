# Write a method select_upcase_keys that takes in a hash and
# returns a new hash containing key-value pairs of the original hash that had uppercase keys.
#  You can assume that the keys will always be strings.

def select_upcase_keys(hash)
  result_hash = {} # empty hash to return
  # search through input hash keys .each_key to find key by enumerating
  # check condition: if k == k.upcase
  # add to result hash
  # return result hash
  hash.each_key do |k|
    if k == k.upcase
      result_hash[k] = hash[k]
    end
  end
  return result_hash
end

p select_upcase_keys("JAMES" => "n", "are" => "not") # { JAMES => 'n' }
print select_upcase_keys({ "make" => "Tesla", "MODEL" => "S", "Year" => 2018, "SEATS" => 4 }) # => {"MODEL"=>"S", "SEATS"=>4}
puts

print select_upcase_keys({ "DATE" => "July 4th", "holiday" => "Independence Day", "type" => "Federal" }) # => {"DATE"=>"July 4th"}
puts
