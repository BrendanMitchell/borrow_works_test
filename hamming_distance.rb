class HammingDistance
  attr_reader :s1, :s2

  def initialize(s1, s2)
    @s1 = s1
    @s2 = s2
  end

  def dh
    return 0 if s1 == s2
    result = 0
    result += (s1.length - s2.length).abs() unless s1.length == s2.length
    sc1 = s1.chars
    sc2 = s2.chars
    result += sc1.zip(sc2).count { |a, b| a != b }
    result
  end
end
