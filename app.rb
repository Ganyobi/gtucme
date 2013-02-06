require "sinatra"
require "mongo"
require "mongoid"
require "cloudinary"

Cloudinary.load!('cloudinary.yml')
Mongoid.load!('mongoid.yml')


class Profile 
	include Mongoid::Document
	field :_id, :type String
	field :username, :type String
	field :img_url, :type String
	field :name, :type String
	field :email, :type String
	field :bio, :type String
	field :portofolio :type String
	field :social :type String

end

get '/' do

	erb :index
end
post '/login' do

end
get '/:username' do
	@user = Profile.find(params[:username])

	#Check if @user is false or Has a unverified account and show error page
	#Check 
	

end

get '/newaccount' do

	erb :register
end

post '/signup' do

	if 	||
	#Check for username availability
	#ensure email is uniquie

end

