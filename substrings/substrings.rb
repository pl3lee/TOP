def substrings(input, dictionary)
    output = {}
    dictionary.each do |element|
        input_copy = input.downcase
        while input_copy.include?(element) 
            if output.key?(element)
                output[element] = output[element] + 1
            else
                output[element] = 1
            end
            input_copy = input_copy.sub(element, "")
        end
    end
    return output
end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)