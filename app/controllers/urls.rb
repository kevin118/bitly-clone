
get '/' do
	#let user create new short URL, display a list of shortened URLs
	# puts "[LOG] Gettin /"
	# puts "[LOG] Params: #{params.inspect}"
  erb :"static/index"
end


post '/urls' do
	@url = Url.new(long_url: params[:long_url])
	@url.shorten
	@url.save
	#create a new url
	erb :"static/index"
end

get '/:short_url' do
	#redirect to appropriate "long" URL
	url = Url.find_by(short_url: params[:short_url])
	redirect to "https://" + url.long_url
end
