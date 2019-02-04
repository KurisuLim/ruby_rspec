RSpec.describe 'nested hooks' do
  before(:context) do
    puts 'Outer Before context'
  end

  before(:example) do
    puts 'Outer Before example'
  end

  it 'does basic math' do
    expect(1 + 1).to eq(2)
  end

  context 'with condition A' do
    before(:context) do
      puts 'Inner Before context'
    end

    before(:example) do
      puts 'Inner Before example'
    end

    it 'does some more basic math' do
      expect(1 + 1).to eq(2)
    end

    it 'does subtraction as well' do
      expect(5 - 3).to eq(2)
    end
  end
end
