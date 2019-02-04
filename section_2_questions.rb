=begin
Answer all questions below. For questions that request code samples, use the Code highlighter to format your code (it makes it easier to grade). The highlighter is the last icon on the toolbar (it's the curly braces with dots inside them).

Questions for this Assignment
By default, what will subject equal?

How do you define a custom subject? Provide a code example.

How does the described_class helper method work? What is the advantage of using it over writing the class name out?

Write an RSpec test for an array with 2 elements.

Declare the subject to be [1, 2].

Write an example that uses expect(subject) to test whether the array is equal to [1, 2].

Write an example that uses the one-liner is_expected syntax.

Which do you prefer?

What's the difference between include_examples and include_context?
=end

RSpec.describe Array do
  subject { [1, 2] }
  it 'should equal to [1, 2]' do
    expect(subject).to eq([1, 2])
  end
  it { is_expected.to eq([1, 2]) }
end