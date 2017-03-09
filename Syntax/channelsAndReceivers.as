receive x from some_chan
  some_code_with_x
end

receive x 
  0:
    some_code
  3:
    some_code
  int:
    some_code
  string:
    some_code
  from some_chan:
    some_code
end

for x from some_chan
  some_code_with_x
end

for x,y from some_chan, other_chan
  some_code_with_x_and_y
end

some_chan = chan int
other_chan = chan[10] int
resize_chan = dynamic_chan[10] int
