require 'spec_helper'

describe "prevencaos/show" do
  before(:each) do
    @prevencao = assign(:prevencao, stub_model(Prevencao,
      :metodo => "Metodo"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Metodo/)
  end
end
