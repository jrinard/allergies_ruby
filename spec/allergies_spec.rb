require('rspec')
require('allergies')
require('pry')

describe('Fixnum#allergies') do
  it('if user inputs 1 then it returns eggs') do
  expect((1).allergies()).to(eq("eggs"))
  end
  it('if user inputs 1 then it returns eggs') do
  expect((28).allergies()).to(eq("tomatoes, strawberries, shellfish"))
  end

end
