require 'spec_helper'

describe "doencasintomas/show" do
  before(:each) do
    @doencasintoma = assign(:doencasintoma, stub_model(Doencasintoma,
      :doenca => nil,
      :sintoma => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
  end
end
