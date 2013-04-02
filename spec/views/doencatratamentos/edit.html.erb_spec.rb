require 'spec_helper'

describe "doencatratamentos/edit" do
  before(:each) do
    @doencatratamento = assign(:doencatratamento, stub_model(Doencatratamento,
      :doenca => nil,
      :tratamento => nil
    ))
  end

  it "renders the edit doencatratamento form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => doencatratamentos_path(@doencatratamento), :method => "post" do
      assert_select "input#doencatratamento_doenca", :name => "doencatratamento[doenca]"
      assert_select "input#doencatratamento_tratamento", :name => "doencatratamento[tratamento]"
    end
  end
end
