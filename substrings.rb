def substrings (string, dictionary)
  string_array = string.split
  result_hash = {}
  
  string_array.each do |og_string|
    dictionary.each do |word|
        if og_string.downcase.include?(word.downcase) then
          puts "'#{word}' is in '#{og_string}'"
        end
    end
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)