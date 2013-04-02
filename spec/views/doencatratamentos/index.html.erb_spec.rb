require 'spec_helper'

describe "doencatratamentos/index" do
  before(:each) do
    assign(:doencatratamentos, [
      stub_model(Doencatratamento,
        :doenca => nil,
        :tratamento => nil
      ),
      stub_model(Doencatratamento,
        :doenca => nil,
        :tratamento => nil
      )
    ])
  end

  it "renders a list of doencatratamentos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
