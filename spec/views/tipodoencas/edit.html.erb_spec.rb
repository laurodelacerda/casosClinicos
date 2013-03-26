require 'spec_helper'

describe "tipodoencas/edit" do
  before(:each) do
    @tipodoenca = assign(:tipodoenca, stub_model(Tipodoenca,
      :tipo => "MyString"
    ))
  end

  it "renders the edit tipodoenca form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tipodoencas_path(@tipodoenca), :method => "post" do
      assert_select "input#tipodoenca_tipo", :name => "tipodoenca[tipo]"
    end
  end
end
