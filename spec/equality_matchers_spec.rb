 RSpec.describe 'equality matchers' do
  let(:a) { 3.0 }
  let(:b) { 3 }

  descibe 'eq matcher' do
    it 'test for value and ignores type' do
      expect(a).to eq(3)
      expect(b).to eq(3.0)
      expect(a).to eq(b)
    end
  end

  describe 'eql matcher' do
    it 'test for value, including same type' do
      expect(a).not_to eql(3)
      expect(b).not_to eql(3.0)
      expect(a).not_to eql(b)
    end
  end

  describe "equal and be" do
    let(:c) { [1, 2, 3] }
    let(:d) { [1, 2, 3] }
    let(:e) { c }
    
    it 'cares about object identity' do
      expect(c).to eq(d)
      expect(c).to eql(d)
      
      expect(c).to equal(e)
      expect(c).to be(e) # same identity

      expect(c).not_to equal(d) # same value but different identity
      expect(c).not_to equal([1, 2, 3]) # different in memory
    end
  end
  
end