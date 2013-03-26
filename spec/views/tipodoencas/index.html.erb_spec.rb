require 'spec_helper'

describe "tipodoencas/index" do
  before(:each) do
    assign(:tipodoencas, [
      stub_model(Tipodoenca,
        :tipo => "Tipo"
      ),
      stub_model(Tipodoenca,
        :tipo => "Tipo"
      )
    ])
  end

  it "renders a list of tipodoencas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
  end
end
