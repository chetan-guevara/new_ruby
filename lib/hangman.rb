class Hangman
	@@dictionary = ['hello', 'dog', 'clinton']

	define_method(:initialize)  do 
		@this_word = @@dictionary.shuffle[0]
		@current_guess = '_' * @this_word.length
		@num_failed_tries = 0
	end

	define_method(:guess_letter) do |letter|
		arr = @this_word.split("")
		i = 0
		matches = []
		arr.each() do |el|
			if el.eql?(letter)
				matches.push(i)
			end
			i += 1
		end
		if matches.empty?()
			@num_failed_tries += 1
		end

		puts @current_guess
		arr = @current_guess.split("")
		matches.each() do |ind|
			arr[ind] = letter
		end
		@current_guess = arr.join()
	end

end
