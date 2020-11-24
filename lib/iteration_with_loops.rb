def find_min_in_nested_arrays(src)
outer_results = []
row_index = 0
new_src = []
counter = 0

while counter < src.count do
  new_src << src[counter].sort{ |a, b| b <=> a }
  counter += 1
end

src = new_src               

while row_index < src.count do
  element_index = 0
 
  while element_index < src[row_index].count do
  temp_element = 100
    if src[row_index][element_index] < temp_element
      temp_element = src[row_index][element_index]
    end
    element_index += 1
  end
  outer_results << temp_element
  row_index += 1
end
return outer_results
end