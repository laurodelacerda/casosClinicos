require 'spec_helper'

describe "doencasintomas/edit" do
  before(:each) do
    @doencasintoma = assign(:doencasintoma, stub_model(Doencasintoma,
      :doenca => nil,
      :sintoma => nil
    ))
  end

  it "renders the edit doencasintoma form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => doencasintomas_path(@doencasintoma), :method => "post" do
      assert_select "input#doencasintoma_doenca", :name => "doencasintoma[doenca]"
      assert_select "input#doencasintoma_sintoma", :name => "doencasintoma[sintoma]"
    end
  end
end
