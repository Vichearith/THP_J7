def caesar_cipher(string,arg)
  arr = []
  string.split("").map{|i| cipher_letter(i,arg)}.join("")
end

def cipher_letter(letter,arg)
  if (letter.ord).between?(97,122) || (letter.ord).between?(65,90)
    if arg > 0 && arg.is_a?(Integer)
      if (letter.ord)+arg > 122 && (letter.ord).between?(97,122) || (letter.ord)+arg > 90 && (letter.ord).between?(65,90)
        (((letter.ord)+arg)-26).chr
      else ((letter.ord)+arg).chr
      end
    elsif arg < 0  && arg.is_a?(Integer)
      if (letter.ord)+arg < 97 && (letter.ord).between?(97,122) || (letter.ord)+arg < 65 && (letter.ord).between?(65,90)
        (((letter.ord)+arg)+26).chr
      else ((letter.ord)+arg).chr
      end
    end
  else return letter
  end
end


