class QuestionsController < ApplicationController
  def answer
    @question = params[:question]
    @answer = if @question == 'I am going to work right now!'
                'Great!'
              elsif @question.include? '?'
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
