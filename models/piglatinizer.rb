require 'pry'
class PigLatinizer

    attr_accessor :phrase

    def pig_latin_to_string(phrase)
        # split word, put each into array for to determine first letter
        new_string = phrase.split(" ")
        
        # return all of the elements (.collect)
        final_array = new_string.collect{|w| piglatinize(w)}
        # Returns a string created by converting each element of the array to a string, separated by the given separator
        pig_latin_string = final_array.join(" ")
    end

    def piglatinize(word)

        vowel = ['a', 'e', 'i', 'o', 'u']
        consonant = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
        # first_letter = word[0].downcase
        # rules of piglatin - if it starts with noun, just add 'way'
        # user input needs to be turned into a string
        # puts "===================================================="
        # puts word.inspect
        if vowel.include?(word[0])
            (word + 'way').to_s
        elsif vowel.include?(word[0].upcase)
            (word + 'way').to_s
        else consonant.include?(word[0])
            if consonant.include?(word[0]) && consonant.include?(word[1]) && consonant.include?(word[2])
                (word[3..-1] + word[0..2] + 'ay').to_s
            elsif consonant.include?(word[0]) && consonant.include?(word[1])
                (word[2..-1] + word[0..1] + 'ay').to_s
            elsif 
                consonant.include?(word[0])
                (word[1..-1] + word[0] + 'ay').to_s
            else
                (word + 'way').to_s
            end

        end
    end
    

    

end