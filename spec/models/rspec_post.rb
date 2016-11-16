require "rails_helper"

RSpec.describe Post, :type => :model do
  it "orders by date" do
    lindeman = User.create!(first_name: "Andy", last_name: "Lindeman")
    chelimsky = User.create!(first_name: "David", last_name: "Chelimsky")

    expect(User.ordered_by_last_name).to eq([chelimsky, lindeman])
  end
end