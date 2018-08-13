class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @questions = params[:question]
    # @answers = if @questions
    if @questions == "I am going to work"
      @answers = "Great"
    elsif @questions.include?"?"
      @answers = "Silly question, get dressed and go to work!"
    else
      @answers = "Go back to work!"
    end
  end
end
