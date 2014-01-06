class WinksController < ApplicationController

	def index
		@winks = Wink.all
	end

	def new
		@winks = Wink.new
	end

	def create
		@winks = Wink.new(params[:wink])
	end

	def destroy
		@winks = Wink.find(params[:id])
		@winks.destroy
	end
end