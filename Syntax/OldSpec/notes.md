## Type inference method

Use interfaces if one is defined, otherwise, have the compiler construct an interface as time goes on. The compiler should check at each potential method that it does not know about. This means that if it has objects A and B, when it gets to some new method `some_method`, it should check with A and B to see if they both have it.

## Better Errors

One of the most important errors will be type errors. These will be incredibly frustrating without a good error. I think that the best way to tackle this is to try and list to the person what the missing method or member is, from what type the error originates from, and where all possible definitions of the object originate from. Type errors should look something like this.

```
TypeError at line 53 of "animalHouse.as"
    >some_dog_or_cat.meow
The potential types for this instance are:
    >Cat
    >Dog
But these types do not have the method "meow":
    >Dog
The potential declarations of each type follow:
    >Cat:
        >some_dog_or_cat = new Cat 
        at line 49 of "animalHouse.as"
    >Dog 
        >some_dog_or_cat = new Dog
        at line 51 of "animalHouse.as"
To learn more about this error, you can see: {some reference document} or search {some error code}
```

## Allowing methods to have "pattern matching" overloading

Functions must not overlap. This means if you have two functions, and one does not specify type, then you cannot have a laterally specific function. This means that:

```
def some_method(SomeObject thing1, thing2)
end

def some_method(thing1, SomeObject thing2)
end
```

are not valid, because if you passed two `SomeObjects` it would not be clear which method should be run. 