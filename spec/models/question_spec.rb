require 'rails_helper'

RSpec.describe Question, type: :model do
  let(:question){ FactoryGirl.create(:question) }

  describe 'create item' do
    it 'attreibutes defined, valid' do
      expect(FactoryGirl.build(:question)).to be_valid
    end
  end

  describe '#next_question' do
    before do
      @q0 = FactoryGirl.create(:question, {created_at: Time.current - 10.seconds})
      @q1 = FactoryGirl.create(:question, {created_at: Time.current })
    end

    it 'next element selected' do
      expect(@q0.next_question).to eq(@q1)
    end

    it 'last element, return nil' do
      expect(@q1.next_question).to eq(nil)
    end
  end

  describe 'check correct' do
    before do
      @q = FactoryGirl.build(:question)
      @answer = @q.answer
    end

    it 'match, return true' do
      expect(@q.correct?('answer one twenty-three')).to be_truthy
    end

    it 'not match, return false' do
      expect(@q.correct?('this is not answer')).to be_falsy
    end
  end

end
