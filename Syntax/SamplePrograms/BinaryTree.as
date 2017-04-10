class BinaryTree<some_type>
  maybe ref BinaryTree @left
  maybe ref BinaryTree @right
  ref some_type @value
  function(some_type, some_type) @compare

  def lookup(lookup_value)
    if compare(lookup_value, value) == 0
      return true
    elsif compare(lookup_value, value) < 0
      unwrap @left as valid
        @left.lookup(lookup_value)
      end
    else
      unwrap @right as valid
        @right.lookup(lookup_value)
      end
    end

    return false
  end



private



end
