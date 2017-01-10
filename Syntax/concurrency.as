def start_coroutine_and_thread()
    # Golang uses the go keyword, and I would be inclined to keep that, mainly because
    # it provides very readable code. This is mainly because the natural way to say 
    # "start a coroutine" is "go do that" and given that there is no real equivalent to
    # "go" in the english language, I think that it is important to use "go" as the 
    # keyword.
    go count_to 3

    # For full scale threads, I think the launch keyword is very helpful, becuase it has
    # a connotaion that implies the increased overhead required by a thread.
    launch count_to 3
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
  temp_value = do_thing_async # or "async do_thing_sync
  # do other computation
  await temp_value
end

def do_other_async_stuff
  temp_value = go do_thing_sync
  # do other computation
  await temp_value
end
