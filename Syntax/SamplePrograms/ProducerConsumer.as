pid_group consumers

for x in 1..10
  go produce(consumers)
  go consume in consumers
end

def consume()
  total = 0
  while consumers.open
    receive x
      total += x
    end
  end
  put x
end

def produce(consumers)
  for 1..10000
    send random to consumers
  end
end


