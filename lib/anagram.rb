# Your code goes here!
class Anagram

    def initialize(word)
        @word = word
    end

    def match(test)
        letters = @word.chars
        sortedLetters = letters.sort
        finalWords = []

        if test.class == String
            sortedCompare=test.chars.sort
            if sortedLetters == sortedCompare && sortedLetters.length == sortedCompare.length
                finalWords << test
            end
        end

        if test.class == Array
            test.each do |i|
                sortedCompare=i.chars.sort
                if sortedLetters == sortedCompare && sortedLetters.length == sortedCompare.length
                    finalWords << i
                end
            end
        end 
        finalWords
    end
end