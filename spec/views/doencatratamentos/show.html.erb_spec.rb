require 'spec_helper'

describe "doencatratamentos/show" do
  before(:each) do
    @doencatratamento = assign(:doencatratamento, stub_model(Doencatratamento,
      :doenca => nil,
      :tratamento => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
  end
end
