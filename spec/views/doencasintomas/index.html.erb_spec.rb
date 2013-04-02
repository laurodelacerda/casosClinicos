require 'spec_helper'

describe "doencasintomas/index" do
  before(:each) do
    assign(:doencasintomas, [
      stub_model(Doencasintoma,
        :doenca => nil,
        :sintoma => nil
      ),
      stub_model(Doencasintoma,
        :doenca => nil,
        :sintoma => nil
      )
    ])
  end

  it "renders a list of doencasintomas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
