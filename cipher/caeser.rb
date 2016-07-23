def caesar_cipher(input_string, shift_factor= 3)
  conversion_to_ord_array = input_string.split(//).map(&:ord)
  rotate = conversion_to_ord_array.map {|n| n + shift_factor}
  rotate.map(&:chr).join #to letterize and join
end

puts caesar_cipher("ifmmp", -1)
puts caesar_cipher("p| uhdo qdph lv grqdog gxfn", -3)
puts caesar_cipher("az")




























