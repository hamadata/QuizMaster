class Question < ApplicationRecord

  validates_presence_of :body, :answer

  def next_question
    Question.order("created_at ASC").where('created_at > ?', self.created_at).limit(1).first
  end

  def correct?(answer)
    answer == self.answer
  end

end
