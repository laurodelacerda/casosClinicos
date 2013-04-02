require 'spec_helper'

describe "sintomas/edit" do
  before(:each) do
    @sintoma = assign(:sintoma, stub_model(Sintoma,
      :descricao => "MyString"
    ))
  end

  it "renders the edit sintoma form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sintomas_path(@sintoma), :method => "post" do
      assert_select "input#sintoma_descricao", :name => "sintoma[descricao]"
    end
  end
end
