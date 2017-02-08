class IndexController < ApplicationController

  def index
    @q = Question.first_question
  end

end
