# Your Code Here
def map(block)
  array = []
  index = 0
  
  while index < block.length do
    array.push(yield(block[index]))
    index += 1
  end
  
  array
end

def reduce(block, starting_point = nil)
  if starting_point  
    value = starting_point
    index = 0
  else
    value = block[0]
    index = 1
  end
  
  while index < block.length do
    value = yield(value, block[index])
    index += 1
  end
  
  value
end