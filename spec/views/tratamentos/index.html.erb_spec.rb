require 'spec_helper'

describe "tratamentos/index" do
  before(:each) do
    assign(:tratamentos, [
      stub_model(Tratamento,
        :metodo => "Metodo",
        :tipotratamento => nil
      ),
      stub_model(Tratamento,
        :metodo => "Metodo",
        :tipotratamento => nil
      )
    ])
  end

  it "renders a list of tratamentos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Metodo".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
