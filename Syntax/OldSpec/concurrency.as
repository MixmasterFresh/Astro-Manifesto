def start_coroutine_and_thread()
    # Golang uses the go keyword, and I would be inclined to keep that, mainly because
    # it provides very readable code. This is mainly because the natural way to say 
    # "start a coroutine" is "go do that" and given that there is no real equivalent to
    # "go" in the english language, I think that it is important to use "go" as the 
    # keyword.
    go count_to 3

    # Concurrent Groups

    # Groups contain many green threads
    go count_to 3 in some_group

    # Green threads can be represented as objects and stopped and paused and otherwise 
    # messed with.
    
    go count_to 3 as that_counting_thread

    go count_to 3 in some_group as another_counting_thread

    shutdown that_counting_thread

    shutdown some_group

    go count_to 3 in counting_group, some_group, other_group
end

# Async Await

async do_thing_async
  # do big calculation
  return 5
end

def do_thing_sync
  # do big calculation
  return 5
end

def use_async_stuff
  temp_value = do_thing_async # or async do_thing_sync
  # do other computation
  await temp_value
end

def do_other_async_stuff
  temp_value = go do_thing_sync
  # do other computation
  await temp_value
end
