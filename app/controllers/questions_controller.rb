class QuestionsController < ApplicationController
  def ask
    # voir la ask.html.erb
  end

  def answer
    @answer = ''
    if params[:question].end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    elsif params[:question] == 'I am going to work'
      @answer = 'Great!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
