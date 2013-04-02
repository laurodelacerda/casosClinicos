require 'spec_helper'

describe "sintomas/index" do
  before(:each) do
    assign(:sintomas, [
      stub_model(Sintoma,
        :descricao => "Descricao"
      ),
      stub_model(Sintoma,
        :descricao => "Descricao"
      )
    ])
  end

  it "renders a list of sintomas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
  end
end
