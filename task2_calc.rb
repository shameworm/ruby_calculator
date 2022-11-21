def main
    number_1 = gets_user_input("1")
    number_2 = gets_user_input("2")
    print "Enter operation: "
    operation = gets.chomp

    case operation
    when '+'
        puts number_1 + number_2
    when '-'
        puts number_1 - number_2
    when '*'
        puts number_1 * number_2
    when '/'
        if number_2 === 0
            puts "You can't divide by 0"
            return 0
        else 
            puts number_1 / number_2
        end
    else
        puts "Incorrect operation"
    end
end

def gets_user_input(number)
    input_checker = false
    print "Enter #{number}-е number:"

    until input_checker
        input = gets.chomp

        if input =~ /^[0-9]*$/
            input_checker = true
        else
            puts "Incorrect data"
        end
    end

    return input.to_i
end

main