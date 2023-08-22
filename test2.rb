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
end

# Test
t1 = Tree.new(20, nil, nil)
t2 = Tree.new(21, nil, nil)
t3 = Tree.new(1, nil, nil)
t4 = Tree.new(3, t1, t2)
t5 = Tree.new(10, t3, nil)
thead = Tree.new(5, t4, t5)
