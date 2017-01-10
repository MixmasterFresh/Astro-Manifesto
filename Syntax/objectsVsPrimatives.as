# In Astro, objects don't need to be declared with their type, but primatives do.
# Primatives are char, int, float, double, long, byte, short, and unsigned equivalents.
# The compiler may simplify char Object references to char primative references, but this is only guaranteed if
# the primative is declared with the type.

def declare_things
    value = 5 # Numeric object 
    thing = 5.0 # Float object
    int stuff = 5 # Int primative
    line = "There are chars in here" # String Object
    for x from line.chars
        # x will pick up the char primitive type from the string iterator definition
    end

end