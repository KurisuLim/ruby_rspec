class King # Prince
  attr_reader :name

  def initialize(name)
    @name = name
  end
end
# described class is dynamic
# just need to change the describe and class name
RSpec.describe King do # Prince
  subject { described_class.new('Boris') }
  let(:louis) { described_class.new('Louis') }

  it 'represent a great person' do
    expect(subject.name).to eq('Boris')
    expect(louis.name).to eq('Louis')
  end
end
