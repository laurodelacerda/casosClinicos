require 'spec_helper'

describe "tipotratamentos/new" do
  before(:each) do
    assign(:tipotratamento, stub_model(Tipotratamento,
      :tipo => "MyString"
    ).as_new_record)
  end

  it "renders new tipotratamento form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tipotratamentos_path, :method => "post" do
      assert_select "input#tipotratamento_tipo", :name => "tipotratamento[tipo]"
    end
  end
end
