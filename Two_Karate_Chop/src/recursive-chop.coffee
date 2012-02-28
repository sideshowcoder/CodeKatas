window.karate ?= {}      

karate.chop = chop = (i, array, offset) ->
  if not array? or array not instanceof Array
    # We don't have an array
    return -1
  # No offset? Set it to 0
  offset ?= 0
  if array.length is 1
    # Array length is one so either it is the element or not
    if array[0] is i then offset else -1
  else
    # Array is longer then 1 so we split it
    pidx = Math.floor(array.length / 2)
    if array[pidx] > i 
      # pivot element > search the lower part of the array
      chop i, array[0...pidx], offset
    else 
      # pivot is <= search the higher part
      chop i, array[pidx...array.length], offset + pidx
    
  
  