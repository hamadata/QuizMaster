class QuizController < ApplicationController

  def show
    @q = Question.find_by!(id: params[:id])
  end

  def update
    @q = Question.find_by!(id: params[:id])
    res = @q.correct?(JSON.parse(params[:json])['answer'])
    render json: { result: res }, status: 200
  end

end
