class QuizController < ApplicationController

  def show
    @q = Question.find_by(id: params[:id])
  end

  def update

  end

end
