require('rspec')
require('anagram')

describe('String#anagram?') do
	it("returns true if the inputs are anagrams of one another") do
		expect("rate".anagram?('tear')).to(eq(true))
	end
	it("returns false if the inputs are not anagrams of one another") do
		expect("rate".anagram?('great')).to(eq(false))
	end
end




