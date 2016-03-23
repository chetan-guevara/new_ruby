require('rspec')
require('leet_speak')

describe('String#leet_speak') do
  it('replaces every "e" in a string with a "3"') do
    expect("elephant".leet_speak).to(eq("3l3phant"))
  end

 it('replaces every "o" in a string with a "0"') do
    expect("boo boo".leet_speak).to(eq("b00 b00"))
  end

 it('replaces every "I" in a string with a "1"') do
    expect("I like Ike".leet_speak).to(eq("1 lik3 1k3"))
  end

 it('replaces every "s" in a string with a "z"') do
    expect("roses".leet_speak).to(eq("r0z3z"))
  end

  it('does NOT replace the first letter when it is an s') do
    expect("sassafrass".leet_speak).to(eq("sazzafrazz"))
  end

  #it('replaces letters correctly in a string of words') do
  #  expect("I scream you scream we all scream for raspberry ice cream.".leetspeak)).to(eq("1 scr3am y0u scr3am w3 all scr3am f0r razpb3rry ic3 cr3am"))
  #end
end

