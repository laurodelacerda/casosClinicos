require 'spec_helper'

describe "tipodoencas/show" do
  before(:each) do
    @tipodoenca = assign(:tipodoenca, stub_model(Tipodoenca,
      :tipo => "Tipo"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Tipo/)
  end
end
