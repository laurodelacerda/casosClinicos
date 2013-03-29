require 'spec_helper'

describe "tipotratamentos/index" do
  before(:each) do
    assign(:tipotratamentos, [
      stub_model(Tipotratamento,
        :tipo => "Tipo"
      ),
      stub_model(Tipotratamento,
        :tipo => "Tipo"
      )
    ])
  end

  it "renders a list of tipotratamentos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
  end
end
