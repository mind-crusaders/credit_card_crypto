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

