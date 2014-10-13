require 'rails_helper'

RSpec.describe "members/new", :type => :view do
  before(:each) do
    assign(:member, Member.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new member form" do
    render

    assert_select "form[action=?][method=?]", members_path, "post" do

      assert_select "input#member_first_name[name=?]", "member[first_name]"

      assert_select "input#member_last_name[name=?]", "member[last_name]"

      assert_select "textarea#member_description[name=?]", "member[description]"
    end
  end
end
