def caesar_cipher(str, shift)
    new_str = ""
    str.each_byte do |char|
        new_char = char.chr
        if char>=65 and char<=90
            if char + shift>90
                new_char = (char + shift - 90 + 64).chr
            else new_char = (char + shift).chr
            end
        elsif char>=97 and char<=122
            if char + shift>122
                new_char = (char + shift - 122 + 96).chr
            else new_char = (char + shift).chr
            end
        end
        new_str += new_char
    end
    new_str
end

def stock_picker(ar)
    if (ar.length >= 2)
        i = 0
        pair = [0, 1]
        while i < ar.length-1 do 
            j = i+1
            while j < ar.length do
                if ar[j] - ar[i] > ar[pair[1]] - ar[pair[0]]
                    pair[0] = i
                    pair[1] = j
                end
                j+=1
            end
            i+=1
        end
        pair
    else
        "Invalid format"
    end
end

def substrings(str, ar)
    hash = {}
    str = str.downcase
    ar.each do |sub|
        sub = sub.downcase
        if str.include? sub
            hash[sub] = str.scan(/(?=#{sub})/).count
        end
    end
    hash
end

puts caesar_cipher("What a string!", 5)
puts "------"
puts stock_picker([17,3,6,9,15,8,6,1,10])
puts "------"
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)