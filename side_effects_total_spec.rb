require_relative 'side_effects_total'

describe '#mutable_total_cart' do
  before do
    @logger = double()
  end

  context 'base case' do
    it 'handles empty list' do
      expect(@logger).to receive(:info).with(0)
      mutable_total_cart([], logger: @logger)
    end

    it 'handles 1 item' do
      expect(@logger).to receive(:info).with(8)
      mutable_total_cart([Item.new(8)], logger: @logger)
    end
  end

  it 'handles multiple items' do
    expect(@logger).to receive(:info).with(21)
    mutable_total_cart([Item.new(10), Item.new(11)], logger: @logger)
  end
end

describe '#total_cart' do
  context 'base case' do
    it 'handles 0 case' do
      expect(total_cart([])).to eq 0
    end

    it 'handles 1 item' do
      expect(total_cart([Item.new(8)])).to eq 8
    end
  end

  it 'handles multiple items' do
    expect(total_cart([Item.new(10), Item.new(11)])).to eq 21
  end
end
