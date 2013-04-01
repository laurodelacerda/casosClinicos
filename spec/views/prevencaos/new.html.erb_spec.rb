require 'spec_helper'

describe "prevencaos/new" do
  before(:each) do
    assign(:prevencao, stub_model(Prevencao,
      :metodo => "MyString"
    ).as_new_record)
  end

  it "renders new prevencao form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => prevencaos_path, :method => "post" do
      assert_select "input#prevencao_metodo", :name => "prevencao[metodo]"
    end
  end
end
