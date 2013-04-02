require 'spec_helper'

describe "doencatratamentos/new" do
  before(:each) do
    assign(:doencatratamento, stub_model(Doencatratamento,
      :doenca => nil,
      :tratamento => nil
    ).as_new_record)
  end

  it "renders new doencatratamento form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => doencatratamentos_path, :method => "post" do
      assert_select "input#doencatratamento_doenca", :name => "doencatratamento[doenca]"
      assert_select "input#doencatratamento_tratamento", :name => "doencatratamento[tratamento]"
    end
  end
end
