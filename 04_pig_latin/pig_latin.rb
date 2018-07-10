#write your code here
def translate(phrase)
    translated_phrase = ""

    vowels = ["a", "e", "i", "o", "u"]
    phrase.split.each do |word|
        if vowels.include?(word[0])
            translated_phrase << word + "ay"
        else
            #find first vowel
            first_vowel_index = 0
            for i in 1..word.length-1 do
                if vowels.include?(word[i]) && !(word[i] == "u" && word[i - 1] == "q")
                    first_vowel_index = i
                    break
                end
            end
            translated_phrase << word[first_vowel_index..-1] << word[0..first_vowel_index-1] << "ay"
        end
        translated_phrase << " "
    end

    translated_phrase[0..-2]

end