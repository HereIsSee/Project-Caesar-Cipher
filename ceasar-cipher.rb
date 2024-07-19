def caesar_cipher(string, number_of_spaces)
   string.split("").map{ |char| letter?(char) ? cipher(char, number_of_spaces) : char}.join
end

def cipher(char, num)
  #97-122 for lower case 
  #65-90 for upper case
  if char.ord.between?(65,91)
    if (char.ord + num - 65) > 25
      return (char.ord + num - 26).chr
    end
    (char.ord+num).chr
  elsif char.ord.between?(97,123)

    if (char.ord + num - 97) > 25
      return (char.ord + num - 26).chr
    end
    (char.ord+num).chr
  end
end

def letter?(char)
  char.match?(/[[:alpha:]]/)
end