class LoadedDice < Dice

  def roll
    original = (1..sides).to_a
    loaded = original + original.each_slice((sides/2).to_i).to_a[1]
    loaded.sample
  end

  def is_it_really_loaded?
    true
  end
end
