# Resource Definitions

Astro GC relies on the concept of objects vs resources. Objects can only be owned by one object or scope. Objects are pass by value. When an object goes out of scope it is collected.

Resources are reference counted and reference collected using a concurrent reference collector. Resources can be owned by an arbitrily large number of things. Resources are pass by reference and own one object.
