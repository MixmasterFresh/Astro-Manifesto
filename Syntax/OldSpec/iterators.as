# Single Variable Iterators

for x from 1 to 10
end

for x from 1 to 10 by 2


#Multi Variable Iterators

for x,y from special_iterator
end


# while loop

while condition
end

do_thing while condition

# Defining Iterators

## this would be the default iterator
iterator default()
  yield x
end

for x from thing
end

iterator in_reverse()
  yield x
end

for x from thing.in_reverse
end

do_thing_to x for x from collection
