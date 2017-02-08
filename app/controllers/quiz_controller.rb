class QuizController < ApplicationController

  def show
    @q = Question.find_by!(id: params[:id])
  end

  def update
    @q = Question.find_by(id: params[:id])
    res = @q.correct?(params[:answer])
    render json: { result: res, link: @q.next_question.present? ? quiz_path(@q.next_question) : 'finished' }, status: 200
  end

end
