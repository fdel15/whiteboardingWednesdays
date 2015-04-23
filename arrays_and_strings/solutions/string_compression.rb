#input string
#output string

#ex:
# compressed_string("hey") => "hey"
# compressed_string("bobby") => "bobby"
# compressed_string(allldjfffffffdd) => a1l3d1j1f7

# Assumptions: capitalization matters

def compressed_string(str)
  compressed = ""
  count = 1
  i = 1
  while i < str.length
   if str[i-1] == str [i]
     count += 1
     if i+1 == str.length
       compressed += str[i] + count.to_s
     end
   else
    compressed += str[i-1] + count.to_s
    count = 1
  end
   i += 1
  end
  if compressed.length >= str.length
    return str
  else
    return compressed
  end
end


p compressed_string("aaabbbcccccccdaaa")
p compressed_string("bobby")
p compressed_string("anacccoddddddddaaaaaaaadeeeeee")

