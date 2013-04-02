require 'spec_helper'

describe "doencaprevencaos/new" do
  before(:each) do
    assign(:doencaprevencao, stub_model(Doencaprevencao,
      :doenca => nil,
      :prevencao => nil
    ).as_new_record)
  end

  it "renders new doencaprevencao form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => doencaprevencaos_path, :method => "post" do
      assert_select "input#doencaprevencao_doenca", :name => "doencaprevencao[doenca]"
      assert_select "input#doencaprevencao_prevencao", :name => "doencaprevencao[prevencao]"
    end
  end
end
