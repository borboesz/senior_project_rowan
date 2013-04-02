class FeedbackController < ApplicationController

	def index
		@feedbacks = Feedback.all
	end

	def create

	end

	def new
		@feedback = Feedback.new
	end

end
