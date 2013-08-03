require 'spec_helper'

describe UsersController do
  describe 'Sign Up' do
    before do
      post :create, { :user => {:name  => "Joe"}}

    end

    it "should create a new user" do
      expect(assigns(:user).name).to eq("Joe")
    end

    # it "should redirect to the profile action" do
    #   expect(response.status).to eq(302)
    #   expect(response).to(redirect_to(user_path(assigns(:user))))
    # end
  end
end
