module Locomotion

  def walk(steps=10)
    "I walked #{steps} steps."
  end

  def talk(speech)
    `say #{speech}`
  end

  def bend(thing)
    "I bent that #{thing}!"
  end
  
end
