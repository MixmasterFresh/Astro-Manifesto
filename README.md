# The Astro Manifesto

## What is Astro Meant To Be

Astro is meant to be the Ultimate language. This seems like a lofty goal, but I do think it is possible. This means that Astro is not intended to compete against niche languages like Rust for systems programming, or CUDA for GPUs (at least not initially), but with advances in the LLVM Compiler Infrastructure. This language is intended to be built upon the concepts that we have seen in numerous other languages with some notable influences from Ruby, Go, and Rust. Discussions on these languages can be seen in the `influences` folder.

Ultimately, every language must justify why it should exist, and Astro is no different. The argument lies in some of the failures of other languages. Ruby is a joy to write, and has some features that make it incredibly useful and interesting to use, but in the end it is a scripting language that requires a runtime and is not very fast (fast of course being a relative term. Here I am comparing to a language like C++). Go made promises that I thought would be great, but in the end, it made too many blatant errors both in the way that it forces code to be written, and some of the internals of how the entire infrastructure worked. Rust provides very powerful promises (which it actually keeps), but unfortunately it is not very easy to write(compared to Go or Ruby) because of some of these promises. I also have discussions on why I don't pull from certain languages in the `influences` folder.

## The Format of This Manifesto

A quick Google search for the definition of "manifesto" brings up the following:

``` text
Manifesto: n. (ˌmanəˈfestō)
a public declaration of policy and aims
```

That is exactly what this is: a public declaration of policy and aims. I want to lay out, in a fairly descriptive manner, exactly what I want Astro to look like. This document probably won't go into too many implementation details (i.e. how certain features will be implemented), but rather will make arguments for why certain features are essential, or complete garbage.

I have tried to organize this document to the best of my ability. I have arranged this into several sections, each meant to address a different topic. Each one is labeled with the topic it covers, but if you need any clarification, the `Readme.md` in each section covers, in detail what the section is all about.

Your English teacher/professor/instructor may have told you never to write using the phrase "I think ...". While this might be a good idea for other documents, I flagrantly disregard that rule here. I do this because I am not trying to state an objective fact, but rather make an argument for why certain features are necessary, and others are complete garbage, and I always wan't it to be apparent that this is the case. These are my thoughts, not my facts.