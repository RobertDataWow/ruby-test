require_relative '../test3'

RSpec.describe 'solution' do
  it 'normal solution' do
    expect(solution(6, 1, 1)).to eq('aabaacaa')
  end

  it 'incomplete solution' do
    expect(solution(0, 1, 8)).to eq('ccbcc')
  end

  it 'multiple solution' do
    possible_output = ['abbcb', 'bcbab', 'bacbb', 'bbabc']
    expect(possible_output).to include(solution(1, 3, 1))
  end

  it 'empty solution' do
    expect(solution(0, 0, 0)).to eq('')
  end
end
