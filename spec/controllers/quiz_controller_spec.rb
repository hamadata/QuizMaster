
require 'rails_helper'


RSpec.describe QuizController, type: :controller do

  describe 'GET #show' do
    before do
      @q = FactoryGirl.create(:question)
    end

    it 'success' do
      get :show, params: { id: @q.id  }
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST #update' do
    before do
      @q = FactoryGirl.create(:question)
    end

    it 'success' do
      post :update, params: { id: @q.id }

    end
  end

end


