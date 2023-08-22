class Tree
  attr_reader :v, :l, :r

  def initialize(v, l, r)
    @v, @l, @r = v, l, r
  end
end

def solution(tree, last_val = -Float::INFINITY)
  count = 0
  return count if tree.nil?

  val = tree.v

  count += 1 if val >= last_val

  count += solution(tree.l, tree.v)
  count += solution(tree.r, tree.v)

  count
end