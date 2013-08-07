require 'spec_helper'

describe PlatsController do
  describe 'Create a plat du jour' do
    before do
      post :create, { :plat => {:description  => "Soup", :price => "10.00", :release => "2013-08-08"}}
    end

    it "of Soup at $10.00" do
      expect(assigns(:plat).description).to eq("Soup")
      (:plat).should_not be_nil
    end

    it "should display the plat page" do
      expect(response.status).to eq(302)
      expect(response).to(redirect_to(edit_plat_path(assigns(:plat))))
    end
  end
end