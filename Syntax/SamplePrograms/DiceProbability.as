for line, index in STDIN.lines_with_index
  [dice, sides, target] = line.split(' ').map(\to_i)
  puts "Case #{index + 1}: #{dice_probability(dice, sides, target)}"
end

def dice_probability(dice, sides, target)
  if target > sides*dice
    return 0.0
  elsif target < dice
    return 1.0
  end

  increment = 1.0 / sides.to_d

  chances = [1.0]
  chances[0] = 1
  for 1:dice
    new_chances = double[].zero

    for j in chances
      for side in 1:sides
        new_chances[j+side] += chances[j]
      end
    end

    chances = new_chances
  end

  return chances[target:dice*sides].sum
end
