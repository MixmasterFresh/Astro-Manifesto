# Circular Reference Avoidance

## What

Circular References are instances where there is a reference path that goes like: 
```
Case 1:
A->B->A 

Case 2:
A->B->C->A
```
These kinds of paths provide a problem in that a naive compiler will continue to follow the reference loop forever. Even a non-naive compiler will have trouble dealing with reference loops, because there is the solid question of which side of the loop should be read first, and there is the possibility(read: extreme likelyhood) of there being interdependencies within these two pieces of code, objects, or whatever else may have the circular dependencies.

## How Others Handle

Most languages outright disallow circular references, given that there are many edge cases that could wreak havoc.

## How Astro Should Handle

Circular references are not all bad, but they should be treated carefully. Astro should allow/disallow circular references depending on the type of references being handled. For a quick list:

File Including: Allow, just blob the files together first and compile them all together. Order doesn't matter in Astro.

Inheritance: Disallow, the only alternative is to do shallow inheritance, but that is more limited.

Objects: Possibly look into a reference collector. This is a divisive issue in the swift community. Look at the argument there.





