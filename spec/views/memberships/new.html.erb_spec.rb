require 'rails_helper'

RSpec.describe "memberships/new", type: :view do
  before(:each) do
    assign(:membership, Membership.new(
      user: nil,
      team: nil,
      owner: false
    ))
  end

  it "renders new membership form" do
    render

    assert_select "form[action=?][method=?]", memberships_path, "post" do

      assert_select "input[name=?]", "membership[user_id]"

      assert_select "input[name=?]", "membership[team_id]"

      assert_select "input[name=?]", "membership[owner]"
    end
  end
end
