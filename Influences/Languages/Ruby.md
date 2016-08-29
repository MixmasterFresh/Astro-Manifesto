# Ruby

## Introduction

Ruby was one of the first languages that I learned. I originally liked ruby because it was the language I knew best, but I've found that these days my love for the language has come from more of a technical appreciation for the features that the language offers. Things such as blocks, monkey-patching, and functional concepts without a purely functional environment, have kept me coming back to the language years later.

Probably the most valuable thing that Ruby offers is that through all of its syntatic sugar and helper methods, it allows you to focus more on the overall logic of programs rather than worrying about implementation details.


# What Ruby Does Right

## Blocks

Blocks are incredibly powerful. For example:

``` ruby
chickens.each do |chicken|
    chicken.get_egg()
end
```

It is incredibly clear what method we are using to iterate through the list as well as what `chicken` refers to. The other nice thing that blocks provide is that the object manages its own traversal. This means that each object defines their own `each` method (or any other iterator), which is obvious by the syntax of the block since you are calling `chickens.each`.

## Monkey Patching

Monkey patching, for those unfamiliar, is the ability to add to a package/class/object indirectly, or without adding code to the package/class/object source. In ruby this takes the form of reopening classes. Monkey patching is helpful in a number of situations:

1. Developers want to add code to an external package that isn't and perhaps won't be added:
    - The feature is outside of the external package's scope.
    - The feature is proprietary and shouldn't be added publicly.
    - The feature has been added, but in a later release that breaks the current code (i.e. cherry picking the feature).
    - The feature will be added in later releases, but the developers need it in a faster time frame.
2. Developers would like to overwrite(not override or overload) a method such as the to_string method.
3. Developers would like to alias methods to match the nomenclature they use internally in their team.

I think that monkey patching is fairly overlooked in other languages because people see it as dangerous, and it can be, but I think that the advantages far outweigh the costs in this case.

## It Just Works

Many things are included out of the box in Ruby which makes the language very powerful.


# What Ruby Does Wrong

## Speed

Any discussion of the pros and cons of Ruby (or any dynamic language for that matter), needs to have some discussion about the speed of the language. Unfortunately Ruby is fairly slow (anywhere from 10 to 100 times slower than C++, depending on the task. source: [benchmarks](https://github.com/kostya/benchmarks)). Now Ruby is faster than Python, but that is much like saying a Ford Fiesta is faster than a Prius, when you could be comparing both to a Bugatti Veyron. Ruby is fast enough for most of what it is used for, but there are many applications that could use a language as easy to write as Ruby that simply can't use the language out of performance concerns.
