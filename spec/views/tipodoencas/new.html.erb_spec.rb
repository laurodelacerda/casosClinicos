require 'spec_helper'

describe "tipodoencas/new" do
  before(:each) do
    assign(:tipodoenca, stub_model(Tipodoenca,
      :tipo => "MyString"
    ).as_new_record)
  end

  it "renders new tipodoenca form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tipodoencas_path, :method => "post" do
      assert_select "input#tipodoenca_tipo", :name => "tipodoenca[tipo]"
    end
  end
end
