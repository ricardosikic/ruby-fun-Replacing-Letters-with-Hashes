#replace characters with hashes
def replace(str_1, str_2)

  if str_1 === ''
    return ''
  end

  newArr = str_1.split('')
  newString = str_2.scan(/[^-]/)
  first_char = newString[0]
  second_char = newString[1]

  final_array = Array.new

  for i in newArr
    for j in first_char..second_char
      if(i === j)
        i = '#'
      end
    end
    final_array << i
  end

  return final_array.join('')
  
end


replace("abcdef", "c-e")