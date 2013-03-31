require 'spec_helper'

describe "doencas/show" do
  before(:each) do
    @doenca = assign(:doenca, stub_model(Doenca,
      :nomepopular => "Nomepopular",
      :nomebio => "Nomebio",
      :historico => "Historico",
      :descricao => "Descricao",
      :causa => "Causa",
      :tipodoenca => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nomepopular/)
    rendered.should match(/Nomebio/)
    rendered.should match(/Historico/)
    rendered.should match(/Descricao/)
    rendered.should match(/Causa/)
    rendered.should match(//)
  end
end
