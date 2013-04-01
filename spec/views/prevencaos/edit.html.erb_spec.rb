require 'spec_helper'

describe "prevencaos/edit" do
  before(:each) do
    @prevencao = assign(:prevencao, stub_model(Prevencao,
      :metodo => "MyString"
    ))
  end

  it "renders the edit prevencao form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => prevencaos_path(@prevencao), :method => "post" do
      assert_select "input#prevencao_metodo", :name => "prevencao[metodo]"
    end
  end
end
