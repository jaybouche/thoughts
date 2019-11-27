class ThoughtsController < ApplicationController
	def index
		@thought = Thought.order("Random()").first
	end

    def new
    	@thought = Thought.new
  	end

  	def create
  		@thought = Thought.create(thought_params)
  		if @thought.invalid?
    		flash[:error] = '<strong>Unable to process</strong>   <strong>Incorrect Input</strong>.'
  		end
  		redirect_to root_path
  	end


  private

  def thought_params
    params.require(:thought).permit(:message, :author)
  end


end
