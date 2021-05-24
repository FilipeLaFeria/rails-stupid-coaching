class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @input = params[:input]
    case @input
    when "I am going to work"
      @answer = "Great!"
    when /.+\?\Z/
      @answer = "Silly question, get dressed and go to work"
    else
      @answer = "I don't care, get dressed and go to work"
    end
  end
end
