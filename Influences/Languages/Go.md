# Go

## Introduction

Go has done some great things, and has introduced some features that I think other languages would be foolish to ignore. I think that Go is an important step forward in the world of programming languages, but Go is far too flawed to be the final step. Go has incorporated some very powerful concepts into it, but unfortunately it mucked it all up with terrible syntax and conventions that make it hard to justify as a good design choice. I could beat this dead horse, but others have done it for me (in far more detail). In order to grasp my opinion on Go and the influence it has on Astro, please see the following:

- [Ten Reasons Why I Don't Like Golang](http://www.teamten.com/lawrence/writings/why-i-dont-like-go.html)
- [Why Go’s design is a disservice to intelligent programmers](http://nomad.so/2015/03/why-gos-design-is-a-disservice-to-intelligent-programmers/)
- [My Thoughts on Go(by David Pollak)](http://blog.goodstuff.im/golang)

# What Go Does Right

## Goroutines

Goroutines are really cool. The ability to fire off a concurrent process with a simple keyword is a very powerful concept. Especially that the goroutines do not have the same overhead that threads do is what makes them practical. In fact, goroutines are the only reason that I kept using Go even after running into all of its ugliness.

## Channels

Implementing a blocking, thread-safe queue as a part of the core language was a great idea, as they are useful in a number of situations. It is honestly surprising that queues don't have better support in other languages.

# What Go Does Wrong

## Goroutines

Goroutines are managed. You don't get to control that management at all. For casual projects, this isn't a problem, but for more high performance applications this isn't really nice to hear. In order to exercise any control over the way that your goroutines run, you have to have a hacky patchwork of channels, that honestly ends up looking like a mess.

## Channels

This section is not really a criticism of channels, but rather a criticism of the effect they had on the rest of the language. I am sure just about everyone has heard the phrase:

> If all you have is a hammer, everything looks like a nail.

Channels are the hammers of Go. Channels are supposed to be the one and only way to solve a problem, and I commonly see the argument that a certain feature isn't necessary because you can do the same thing with a *disgusting* mess of channels that makes it virtually impossible to decipher what the intention of the code is. This is not a healthy conversation to be having over and over. Channels are not enough. Period. End Of Line. Channels are nice, but they can't solve every problem *well*.

## "Conventions"

Constants should be written like this: `CONSTANT`. Anything else is just sloppy craftmanship. The fact that this was flagrantly disregarded by the Golang team shows a certain disregard for good programming practice. This makes code less readable which leads to more bugs and longer development cycles.

This, of course, all stems from Go's *disastrous* public/private naming convention system. This system, for those unfamiliar, is to make public all methods and functions that start with a capital letter and make all of the rest private. This means that if you want a private constant, that is going to be: `constant`. The public/private keywords are not only an established standard across programming languages. I can only assume the motivation for deviating was to perhaps make it more clear, but it is actually less clear. This is because everything used outside of a class must start with an Uppercase letter since that is the public which means that you don't see a difference outside of the class, but in the method or function signature, the difference is this:

``` Go
func GetTheThing(index int){}

func getTheOtherThing(index int){}
```

``` Java
public void getTheThing(int index){}

private void getTheOtherThing(int index){}
```

The second example is significantly more explicit because instead of looking for capitalization, we can see the public/private keywords.

## Binary Size

The binaries are very large for the code that is contained. 10+ MB for a single file program is too much.  That is all.

## Confusing Where With What

Go started without a good concept of what a package is. This lead to infrastructure everywhere assuming that github was the only place to store a library. This is dangerous and ugly. It's dangerous because it limits you to a specific source control provider, and ugly because it means that code that I write on my local machine has to have a concept of what Github is and gets information from there.

## Vendoring/Versioning

Along with the last section, in order to ensure that you have a consistent version of a library in Go, you have to hold all of the code for those libraries in your repository. I think it is obvious why this is an undesireable practice.

## Anonymous Functions Everywhere

Anonymous fuctions are dangerous. They have their place, and can be convenient in specific scenarios, but any language that has simple anonymous functions ends up providing a platform to encourage poor programming practice(see Javascript). Anonymous functions look hacky, and it is not always clear when, or in what context the function will be called. Finally named functions are more clear and descriptive, which leads to better programming practice.