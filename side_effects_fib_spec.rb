require_relative 'side_effects_fib'

describe '#side_effect_fib' do
  it 'prints result' do
    #how do I mock puts?
  end
end

describe '#recursive_fib' do
  context 'base case' do
    it 'handles 0 case' do
      expect(recursive_fib(0)).to eq 1
    end

    it 'handles 1 case' do
      expect(recursive_fib(1)).to eq 1
    end
  end

  it 'handles higher case' do
    expect(recursive_fib(5)).to eq 8
  end
end
