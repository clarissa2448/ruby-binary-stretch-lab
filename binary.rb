def decimal_to_binary(decimal)
    if decimal.to_i != decimal
       return "This method only accepts positive integers"
    end
    if decimal < 0
       return "This method only accepts positive integers"
    end
    holder = decimal
    binary_array = []
    remainder = 0
    while holder > 0 
        remainder = holder % 2
        holder = (holder / 2).floor
        binary_array.unshift(remainder)
    end
    return binary_array.join
end

def binary_to_decimal(binary)
    if binary.to_i != binary
        return "This method only accepts binary"
    end
    if binary < 0
        return "This method only accepts binary"
    end
    binary_array = binary.to_s.split("").map(&:to_i)
    if binary_array.include?(2)
        return "This method only accepts binary"
    
    else
        binary_array.reverse!
        decimal = 0
        binary_array.each_with_index do |value, i|
           if value == 1
               decimal = decimal + 2 ** i
            end
        end
        return decimal
    end
end