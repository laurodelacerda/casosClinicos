require 'spec_helper'

describe "doencas/index" do
  before(:each) do
    assign(:doencas, [
      stub_model(Doenca,
        :nomepopular => "Nomepopular",
        :nomebio => "Nomebio",
        :historico => "Historico",
        :descricao => "Descricao",
        :causa => "Causa",
        :tipodoenca => nil
      ),
      stub_model(Doenca,
        :nomepopular => "Nomepopular",
        :nomebio => "Nomebio",
        :historico => "Historico",
        :descricao => "Descricao",
        :causa => "Causa",
        :tipodoenca => nil
      )
    ])
  end

  it "renders a list of doencas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nomepopular".to_s, :count => 2
    assert_select "tr>td", :text => "Nomebio".to_s, :count => 2
    assert_select "tr>td", :text => "Historico".to_s, :count => 2
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    assert_select "tr>td", :text => "Causa".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
