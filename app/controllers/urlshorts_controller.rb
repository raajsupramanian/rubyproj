class UrlshortsController < ApplicationController
	def new
	end
	
	def create
		#render plain: params[:urlshort].inspect
		@urlshort = Urlshort.new(article_params)
 
  		@urlshort.save
 		redirect_to @urlshort
	end
	
	def show
  		@urlshort = Urlshort.find(params[:id])
		@test = Urlshort.find(params[:id])['fullurl']
		@remote_ip = request.env["HTTP_X_FORWARDED_FOR"]
		#@urlstat = 
		redirect_to @test
	end
	
	private
  		def article_params
    			params.require(:urlshort).permit(:fullurl, :desc)
  		end

end
