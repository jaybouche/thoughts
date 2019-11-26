class ThoughtsController < ApplicationController
	def index
		@thought = Thought.order("Random()").first
	end
end
