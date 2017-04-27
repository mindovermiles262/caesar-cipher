=begin

Caesar Cypher

Encrypt secret messages using a string and an integer key value.  Program shifts letters 
by [key] letters.

=end

class CaesarCipher
    def self.encrypt(message, key)
        key = key % 26 
        encrypted = []
        # Split message into words array
        arr = message.bytes.to_a
        # Change characters to ascii values
        arr.each do |l|
            # if lowercase letter
            if (l <= 122 && l >= 97)
                ascii = key + l
                if ascii > 122
                    encrypted = encrypted.push((ascii - 123 + 97).chr)
                else
                    encrypted = encrypted.push(ascii.chr)
                end
            # if uppercase letter #[65..90]
            elsif (l <= 90 && l >= 65)
                ascii = key + l
                if ascii > 90
                    encrypted = encrypted.push((ascii - 91 + 65).chr)
                else
                    encrypted = encrypted.push(ascii.chr)
                end
            # non-letters stay the same
            else
                encrypted = encrypted.push(l.chr)    
            end
        end
        # Return encrypted string
        return encrypted.join("")
    end
end

#CaesarCipher.encrypt("What a string!", 5)
# => "Bmfy f xywnsl!"