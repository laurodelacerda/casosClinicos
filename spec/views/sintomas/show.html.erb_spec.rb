require 'spec_helper'

describe "sintomas/show" do
  before(:each) do
    @sintoma = assign(:sintoma, stub_model(Sintoma,
      :descricao => "Descricao"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Descricao/)
  end
end
