class Book
    def title=(newTitle)
        title = newTitle.split(' ').map { |word|
            if word != 'and' && word != 'in' && word != 'the' && word != 'of' && word != 'a' && word != 'an'
                word.capitalize
            else
                word
            end
        }
        
        title[0] = title[0].capitalize

        @title = title.join(' ')
    end

    def title 
        @title
    end
end
