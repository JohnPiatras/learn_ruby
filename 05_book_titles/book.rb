class Book
# write your code here
    def title=(string)
        noncapital_words = ["and", "the", "of", "in", "a", "an"]
        @title = ""
        string.split.each do |word|
            if !noncapital_words.include?(word) || @title == ""
                word.capitalize!
            end
            @title << word + " "
        end
        @title = @title[0..-2]
    end

    def title
        @title
    end


end
