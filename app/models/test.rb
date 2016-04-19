def shorten
		list = ("a".."z").to_a + ("A".."Z").to_a + (0..9).to_a
		short = list.sample(8).to_a
		self.short_url = short
	end