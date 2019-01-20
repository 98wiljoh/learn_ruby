def echo message
    message
end

def shout message
    message.upcase
end

def repeat message
    message + ' ' + message
end

def repeat (*message)
    if message.length == 1
        message[0].to_s + ' ' + message[0].to_s
    else 
        finalMessage = message[0].to_s

        for i in 1..(message[1] - 2)
            finalMessage = finalMessage + ' ' + message[0].to_s 
        end

        finalMessage = finalMessage + ' ' + message[0].to_s
    end
end

def start_of_word (word, n)
    word[0...n]
end

def first_word sentence
    name = sentence.split(' ')
    name[0]
end

def titleize word
    words = word.split(' ')
    firstNr = 0
    words.map { |name| 
        if name == words.first && firstNr == 0
            firstNr = 1
            name.capitalize 
        elsif (name != 'and' && name != 'the' && name != 'over')
            name.capitalize 
        else
            name
        end
    }.join(' ')
end