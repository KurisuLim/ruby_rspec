# Create a new ​array_spec.rb​ file.
#
# Create an example group using ​RSpec.describe​ with an argument of ​Array​.
#
# This represent Ruby's native Array class.
#
# Add an example with a docstring of your choice.
#
# Write an assertion that tests that the initial length of ​subject​ is 0.
#
# In the same example, invoke the ​push​ method to add an element to the ​subject​ array.
#
# Write another assertion to check that the length of the array is now 1.

RSpec.describe Array do
  it 'should added something' do
    puts subject
    puts subject.class
    expect(subject.length).to eq(0)
    subject.push('Hello World')
    puts subject
    expect(subject.length).to eq(1)
  end
end
