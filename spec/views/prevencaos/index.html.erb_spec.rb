require 'spec_helper'

describe "prevencaos/index" do
  before(:each) do
    assign(:prevencaos, [
      stub_model(Prevencao,
        :metodo => "Metodo"
      ),
      stub_model(Prevencao,
        :metodo => "Metodo"
      )
    ])
  end

  it "renders a list of prevencaos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Metodo".to_s, :count => 2
  end
end
