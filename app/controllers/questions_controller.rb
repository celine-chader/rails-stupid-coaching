class QuestionsController < ApplicationController
  def ask
    @answer = params[:answer]
  end

  def answer
    @answer = params['answer']
    if params['answer'].downcase == "i'm going to work"
      @reaction = 'Great!'
    elsif params['answer'].include? '?'
      @reaction = 'Silly question, get dressed and go to work!'
    else
      @reaction = "I don't care, get dressed and go to work!"
    end
  end
end
