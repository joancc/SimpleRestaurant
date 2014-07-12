require 'rails_helper'

RSpec.describe RestaurantsController, type: :controller do
  let!(:restaurant){Restaurant.create(name:"TestRestaurant")}

  context "GET index" do
    it "should return all dogs" do
      get :index
      expect(assigns(:restaurants)).to include restaurant
    end
  end

  context "GET show" do
    visit('/restaurants/show')
    
  end
  
  context "GET new" do
    visit('/restaurants/new')

  end

  context "POST create" do
    visit('/restaurants/new')
  end

  context "GET edit" do
    visit('/restaurants/edit')
  end

  context "PUT update" do
    visit('/restaurants/edit')
  end

  
end
 