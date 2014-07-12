require 'spec_helper'

RSpec.describe Restaurant, type: :model do

  it "is invalid without a first name"do
    expect(Restaurant.new(name: nil)).to_not be_valid
  end
end