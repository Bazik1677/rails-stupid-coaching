class QuestionsController < ApplicationController
  def ask
  end

  def answer
    answers = ["Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]
    if params[:questions] == "I am going to work"
      @answer = answers[0]
    elsif params[:questions].strip.end_with?("?")
      @answer = answers[1]
    else
      @answer = answers[2]
    end
  end
end
