class Tree
  attr_reader :v
  attr_reader :l
  attr_reader :r

  def initialize(v, l, r)
    @v, @l, @r = v, l, r
  end
end

def solution(tree, last_val = -Float::INFINITY)
  count = 0

  if tree.nil?
    return count
  end

  val = tree.v

  if val >= last_val
    count += 1
  end

  count += solution(tree.l, tree.v)
  count += solution(tree.r, tree.v)

  return count
end

# Test
t1 = Tree.new(20, nil, nil)
t2 = Tree.new(21, nil, nil)
t3 = Tree.new(1, nil, nil)
t4 = Tree.new(3, t1, t2)
t5 = Tree.new(10, t3, nil)
thead = Tree.new(5, t4, t5)

puts solution(thead)
