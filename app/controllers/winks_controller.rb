class WinksController < ApplicationController

	def index
		@winks = Wink.all
	end

	def new
		@wink = Wink.new
	end

	def create
		@winks = Wink.new(params[:wink])

		respond_to do |format|
			if @winks.save
			format.html { redirect_to "/winks/#{@winks.id}", notice: 'Post was awesomely keithly created' }
      #   format.json { render json: "/winks/#{wink.id}", status: :created, location: @winks }
      else
        format.html { render action: "new" }
        # format.json { render json: @winks.errors, status: :unprocessable_entity }
      end
    end
  end

    def show
	    @winks = Wink.find(params[:id])

	    respond_to do |format|
	      format.html # show.html.erb
	      format.json { render json: @post }
	    end
    end

	def destroy
		@winks = Wink.find(params[:id])
		@winks.destroy
		redirect_to "/winks"
	end
end