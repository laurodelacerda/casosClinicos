require 'spec_helper'

describe "tipotratamentos/show" do
  before(:each) do
    @tipotratamento = assign(:tipotratamento, stub_model(Tipotratamento,
      :tipo => "Tipo"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Tipo/)
  end
end
