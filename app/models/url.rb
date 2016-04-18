class Url < ActiveRecord::Base
	validates :long_url, presence: true
	validates :short_url, presence: true


	# This is Sinatra! Remember to create a migration!
	def shorten
		list = ("a".."z").to_a, ("A".."Z").to_a, (0..9).to_a
		short = list.flatten.sample(8).to_a.join
		self.short_url = short
	end
end
