# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  keys_arr = []
  values_arr = []
  name_hash.map do |key, value|
    keys_arr << key
    values_arr << value 
  end
  if keys_arr.size == 0 
    return nil 
  end
  min_key = keys_arr[0]
  min_value = values_arr[0]
  ii=1 
  while (ii < keys_arr.size)
    if (values_arr[ii]<min_value)
      min_value=values_arr[ii]
      min_key = keys_arr[ii]
      ii+=1
    end
  end
  #so the issue is that there is no general way to call a single random key value pair from a hash? so I made 2 parallel vectors instead
  return min_key
end