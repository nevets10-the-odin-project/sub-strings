def substrings (string, dictionary)
  string_array = string.split
  result_hash = {}
  
  string_array.each do |og_string|
    dictionary.each do |word|
        if og_string.downcase.include?(word.downcase) then
          if result_hash[word] then
            result_hash[word] += 1
          else
            result_hash[word] = 1
          end
        end
    end
  end
  result_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("Howdy partner, sit down! How's it going?", dictionary)