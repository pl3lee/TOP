def caesar_cipher(str, factor)
    input = str.split('')
    output = str
    input.each_with_index do |c, i|
        code = c.ord
        if ((65 <= code) && (code <= 90)) || ((97 <= code) && (code <= 122))
            if factor < 0
                temp = factor.abs
                temp.times do |index|
                    if code - 1 == 64
                        code = 90
                    elsif code - 1 == 96
                        code = 122
                    else
                        code = code - 1
                    end
                end
            else
                factor.times do |index|
                    if code + 1 == 91
                        code = 65
                    elsif code + 1 == 123
                        code = 97
                    else
                        code = code + 1
                    end
                end
            end
        end
        output[i] = code.chr
    end
    return output
end

puts caesar_cipher("Hello, World!", -29)


