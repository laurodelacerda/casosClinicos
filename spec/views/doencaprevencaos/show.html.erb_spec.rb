require 'spec_helper'

describe "doencaprevencaos/show" do
  before(:each) do
    @doencaprevencao = assign(:doencaprevencao, stub_model(Doencaprevencao,
      :doenca => nil,
      :prevencao => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
  end
end
