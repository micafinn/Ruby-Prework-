def solve_cipher(word,shift= 3)

  deciphered_word = ''
  word.each_char do |c| 

    if shift < 0  
      if c == 'a'
        deciphered_word << 'z'
      elsif c == 'A'
        deciphered_word << 'Z'
      else
        deciphered_word << (c.ord + shift).chr
      end    

    elsif shift > 0
      if c == 'z' 
        deciphered_word << 'a'
      elsif c == 'Z'
        deciphered_word << 'A'
      else
      deciphered_word << (c.ord + shift).chr
      end
    end  

  end
  deciphered_word
end

p solve_cipher('ifmmp',-1)