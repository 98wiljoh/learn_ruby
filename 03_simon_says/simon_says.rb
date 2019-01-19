def echo message
    message
end

def shout message
    message.upcase
end

def repeat message
    message + ' ' + message
end

def repeat (message, n)
    finalMessage = ''

    for i in 0..(n - 1)
        finalMessage = finalMessage + ' ' + message 
    end

    finalMessage = finalMessage + ' ' + message
end