class UrlshortsController < ApplicationController
	def index
		@statid = params[:stats]
		unless @statid == nil
			 @fulllist = Urlstats.fullurlid(@statid).count
			 @groupdata = Urlstats.fullurlid(@statid).select('count(*) as total,ip').group('ip')
		else
			@urlsh = Urlshort.all
		end
	end

	def new
	end
	
	def create
		@urlshort = Urlshort.new(article_params)
  		@urlshort.save
		redirect_to :controller => 'urlshorts', :action => 'new', :urlshort1 => @urlshort.id.to_s
	end
	
	def show
  		@urlshort = Urlshort.find(params[:id])
		@test = Urlshort.find(params[:id])['fullurl']
		@remoteip = request.remote_ip
		@statsobj = Urlstats.new(:fullurlid => params[:id], :ip => request.remote_ip)
		@statsobj.save
		redirect_to @test
	end

	def statslist
	end
	
	private
  		def article_params
    			params.require(:urlshort).permit(:fullurl, :desc)
  		end
		

end
