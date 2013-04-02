require 'spec_helper'

describe "sintomas/new" do
  before(:each) do
    assign(:sintoma, stub_model(Sintoma,
      :descricao => "MyString"
    ).as_new_record)
  end

  it "renders new sintoma form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sintomas_path, :method => "post" do
      assert_select "input#sintoma_descricao", :name => "sintoma[descricao]"
    end
  end
end
