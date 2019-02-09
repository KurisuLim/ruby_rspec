RSpec.describe 'allow method review' do
  it 'can customize return value for methods on doubles' do
      calculator = double
      allow(calculator).to receive(:add).and_return(15)

      # expect(calculator.add).to be_nil
      expect(calculator.add).to eq(15)
      expect(calculator.add(3)).to eq(15)
      expect(calculator.add(-2, -3, -5)).to eq(15)
      expect(calculator.add('hello')).to eq(15)
  end

  it 'can stub one or more mehtods on a real object' do
    arr = [1, 2, 3]
    allow(arr).to receive(:sum).and_return(10)
    
    expect(arr.sum).to eq(6)
  end
end