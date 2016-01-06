require_relative 'side_effects_fib'

describe '#side_effect_fib' do

  before do
    @logger = double()
  end

  context 'base case' do
    before do
      expect(@logger).to receive(:info).with(1)
    end

    it 'handles 0 case' do
      side_effect_fib(0, logger: @logger)
    end

    it 'handles 1 case' do
      side_effect_fib(1, logger: @logger)
    end
  end

  it 'handles a higher case' do
    expect(@logger).to receive(:info).with(8)
    side_effect_fib(5, logger: @logger)
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
