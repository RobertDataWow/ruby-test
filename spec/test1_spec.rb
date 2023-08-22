require_relative '../test1'

RSpec.describe 'solution' do
  it 'normal numbers' do
    expect(solution(123)).to eq(321)
  end

  it 'single-digit numbers' do
    expect(solution(5)).to eq(5)
  end

  it 'duplicate digits numbers' do
    expect(solution(122333)).to eq(333221)
  end

  it 'large numbers' do
    expect(solution(9876543210)).to eq(9876543210)
  end
end
