#write your code here
def echo(string)
    string
end

def shout(string)
    string.upcase!
end

def repeat(string)
    string << (" " + string)
end

def repeat(string, n = 2)
    string << (" " + string) * (n - 1)
end

def start_of_word(string, n)
    string[0..n-1]
end

def first_word(string)
    string.split[0]
end

def titleize(string)
    little_words = ["and", "the", "of", "over"]
    final_string = string.split.reduce("") do |final_string, element|

        if (!little_words.include?(element)) || final_string.length == 0
            element.capitalize!
        end
        final_string << element + " "
    end
    final_string[0..string.length-1]
end
