class Thing

end

class otherThing < Thing #inherits from Thing
    
end

class hasThings
    @variable_1 = 1
    @variable_2 = "data"

    def init(@variable_1, @variable_2, other_variable)
        #In Astro methods, existing variables can be the parameters as to avoid the extra few "this.x = x" lines.
        #This means that variable_1 and variable_2 are automatically set by the initializer.
    end
end