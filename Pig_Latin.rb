# Pig Latin
# What is pig latin? Pig latin takes the first letter of every word, moves it to the end of the word and adds an ‘ay’ after it. For example, "the quick brown fox" becomes "hetay uickqay rownbay oxfay".

# Write a method that translates a text to Pig Latin.

# E.g. pig_latin("Sydney or Melbourne or Brisbane are possible destinations") should return "ydneySay roay elbourneMay roay risbaneBay reaay ossiblepay estinationsday"

# E.g. pig_latin("A") should return "Aay"

# E.g. pig_latin("") should return ""

def pig_latin(string)
    first_letter = string[0].downcase
    if ["a", "e", "i", "o", "u"].include?(first_letter)
        puts "#{string}ay"
    else
    consonants = []
    consonants << string[0]
      if ["a", "e", "i", "o", "u"].include?(string[1]) == false
        consonants << string[1]
        if ["a", "e", "i", "o", "u"].include?(string[2]) == false
          consonants << string[2]
        end
      end
    "#{string[consonants.length..-1] consonants.join "ay"}"
  end
end


string = ["hi", "there"]

puts pig_latin(string)








