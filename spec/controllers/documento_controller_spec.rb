require 'rails_helper'

RSpec.describe DocumentoController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #save" do
    it "returns http success" do
      get :save
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #private" do
    it "returns http success" do
      get :private
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #documento_params" do
    it "returns http success" do
      get :documento_params
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #delete" do
    it "returns http success" do
      get :delete
      expect(response).to have_http_status(:success)
    end
  end

end
