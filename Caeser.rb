=begin
class Caesar
    def initialize(key, alphabet = ('a'..'z').to_a.join)
      i = key % alphabet.size 
      @decrypt = alphabet
      @encrypt = alphabet[i..-1] + alphabet[0...i]
    end
  
    def encrypt(document)
      document.tr(@decrypt, @encrypt)
    end
  
    def decrypt(document)
      document.tr(@encrypt, @decrypt)
    end
  end
=end

class Caesar
    #attr_accessor :alphabet
    #it's working
    def initialize(alphabet = ('a'..'z').to_a.join)
      @alphabet = alphabet
    end
    
    def encrypt(document,key)
        i = key % @alphabet.size 
        encrypt = @alphabet[i..-1] + @alphabet[0...i]
        document.tr(@alphabet, encrypt)
    end
  
    def decrypt(document,key)
        i = key % @alphabet.size 
        encrypt = @alphabet[i..-1] + @alphabet[0...i]
        document.tr(encrypt, @alphabet)
    end
  end 
