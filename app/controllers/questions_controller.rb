class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @message = params[:message]

    if @message == "I am going to work right now!"
      @coach_answer = "Great!"
    elsif @message.end_with?("?")
      @coach_answer = "Silly question, get dressed and go to work!"
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end

end
