require 'rails_helper'

RSpec.describe AccessController, :type => :controller do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      expect(response).to be_success
    end
  end

  describe "GET 'login'" do
    it "returns http success" do
      get 'login'
      expect(response).to be_success
    end
  end

end
