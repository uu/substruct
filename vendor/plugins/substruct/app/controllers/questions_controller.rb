class QuestionsController < ApplicationController
  layout 'main'

  def index
    @title = t(:questions)
  end

  def faq
    @title = t(:faq)
    @questions = Question.find(
      :all,
      :conditions => "featured = 1",
      :order => "-rank DESC, times_viewed DESC"
    )
  end

	# Ask a question, also known as /contact
	def ask
		@question = Question.new
	end
	
	# Actually creates the question
	def send_question
    @question = Question.new(params[:question])
		@question.short_question = t(:faq_message_from_form)
    if !@question.save then
      flash.now[:notice] = t(:faq_error)
      render :action => 'ask'
    end
  end
	
end
