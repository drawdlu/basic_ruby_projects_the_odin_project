def substrings (string, sub_arr)
  sub_arr.reduce({}) do |hash, arr_word|
    sum = string.split(" ").reduce(0) do |count, string_word|
            if string_word.downcase.include?(arr_word)
              count += 1
            else 
              count
            end
          end

    if sum > 0
      hash[arr_word] = sum
    end

    hash
    
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("below", dictionary)
#=> {"below"=>1, "low"=>1}

p substrings("Howdy partner, sit down! How's it going?", dictionary)
#=> {"down"=>1, "go"=>1, "going"=>1, "how"=>2, "howdy"=>1, "it"=>2, "i"=>3, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1}
