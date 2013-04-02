require 'spec_helper'

describe "doencaprevencaos/index" do
  before(:each) do
    assign(:doencaprevencaos, [
      stub_model(Doencaprevencao,
        :doenca => nil,
        :prevencao => nil
      ),
      stub_model(Doencaprevencao,
        :doenca => nil,
        :prevencao => nil
      )
    ])
  end

  it "renders a list of doencaprevencaos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
