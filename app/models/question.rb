class Question < ApplicationRecord

  validates_presence_of :body, :answer

  def self.first_question
    Question.order("created_at ASC").limit(1).first
  end

  def next_question
    Question.order("created_at ASC").where('created_at > ?', self.created_at).limit(1).first
  end

  def correct?(answer)
    answer.gsub(/[0-9]+/){ |match| NumAlphabetConverter.convert(match.to_i) } == self.answer.gsub(/[0-9]+/){ |match| NumAlphabetConverter.convert(match.to_i) }
  end

end
