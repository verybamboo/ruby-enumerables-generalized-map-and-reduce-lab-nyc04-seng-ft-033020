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

def reduce(block, reduced=nil)
  if reduced
    value = reduced
    index = 0
  else
    value = block[index]
    index = 0
  end
  while index < block.length do
    value = yield(value, block[index])
    index += 1
  end
  value
end