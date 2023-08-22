# spec/solution_spec.rb
require_relative '../test2' # Assuming your solution is in a file named solution.rb

RSpec.describe 'solution' do
  it 'normal tree node' do
    t1 = Tree.new(20, nil, nil)
    t2 = Tree.new(21, nil, nil)
    t3 = Tree.new(1, nil, nil)
    t4 = Tree.new(3, t1, t2)
    t5 = Tree.new(10, t3, nil)
    thead = Tree.new(5, t4, t5)

    expect(solution(thead)).to eq(4)
  end

  it 'single-node tree' do
    t = Tree.new(5, nil, nil)

    expect(solution(t)).to eq(1)
  end

  it 'tree with no nodes' do
    expect(solution(nil)).to eq(0)
  end

  it 'tree with duplicate values' do
    t1 = Tree.new(5, nil, nil)
    t2 = Tree.new(5, nil, nil)
    thead = Tree.new(5, t1, t2)

    expect(solution(thead)).to eq(3)
  end

  it 'complex tree' do
    t1 = Tree.new(20, nil, nil)
    t2 = Tree.new(21, nil, nil)
    t3 = Tree.new(1, nil, nil)
    t4 = Tree.new(3, t1, t2)
    t5 = Tree.new(10, t3, nil)
    t6 = Tree.new(25, nil, nil)
    t7 = Tree.new(24, t6, nil)
    t8 = Tree.new(5, t4, t5)
    thead = Tree.new(23, t8, t7)

    expect(solution(thead)).to eq(6)
  end
end
