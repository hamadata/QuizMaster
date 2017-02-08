require 'rails_helper'

RSpec.describe QuizController, type: :controller do

  describe 'GET #show' do
    before do
      @q = FactoryGirl.create(:question)
    end

    it 'success' do
      get :show, params: {id: @q.id}
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST #update' do
    describe 'only one question' do
    before do
      @q = FactoryGirl.create(:question)
    end

    it 'success' do
      post :update, params: {id: @q.id, answer: @q.answer}, "CONTENT_TYPE" => "application/json"
      expect(response).to have_http_status(:success)
      expect(response.body).to eq(JSON.generate({result: true, link: 'finished'}))
    end
    end

    describe 'the first in 2 questions' do
      before do
        @q = FactoryGirl.create(:question)
        @q1 = FactoryGirl.create(:question)
      end

      it 'success, next question link' do
        post :update, params: {id: @q.id, answer: @q.answer}, "CONTENT_TYPE" => "application/json"
        expect(response).to have_http_status(:success)
        expect(response.body).to eq(JSON.generate({result: true, link: "/quiz/#{@q1.id}"}))
      end
    end
  end

end


