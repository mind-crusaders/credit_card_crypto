module SubstitutionCipher
  module Caesar
    # Encrypts document using key
    # Arguments:
    #   document: String
    #   key: Fixnum (integer)
    # Returns: String
    @alphabet = ('a'..'z').to_a.join
    def self.encrypt(document, key)
      document.to_s.chars.collect { |e| (e.ord + key).chr }.join
    end

    # Decrypts String document using integer key
    # Arguments:
    #   document: String
    #   key: Fixnum (integer)
    # Returns: String
    def self.decrypt(document, key)
        document.to_s.chars.collect { |e| (e.ord - key).chr }.join
    end
  end
  module Permutation
    # Encrypts document using key
    # Arguments:
    #   document: String
    #   key: Fixnum (integer)
    # Returns: String
    def self.encrypt(document, key)
      # TODO: encrypt string using a permutation cipher
       document = document.to_s.chars
       generation = (0..127).to_a.shuffle(random: Random.new(key))
       document.collect { |x| generation.at(x.ord).chr}.join
    end
    

    # Decrypts String document using integer key
    # Arguments:
    #   document: String
    #   key: Fixnum (integer)
    # Returns: String
    def self.decrypt(document, key)
      # TODO: decrypt string using a permutation cipher
       document = document.to_s.chars
       generation = (0..127).to_a.shuffle(random: Random.new(key))
       document.collect { |x| generation.index(x.ord).chr}.join
    end
  end
end
