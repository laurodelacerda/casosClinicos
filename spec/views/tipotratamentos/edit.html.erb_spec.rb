require 'spec_helper'

describe "tipotratamentos/edit" do
  before(:each) do
    @tipotratamento = assign(:tipotratamento, stub_model(Tipotratamento,
      :tipo => "MyString"
    ))
  end

  it "renders the edit tipotratamento form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tipotratamentos_path(@tipotratamento), :method => "post" do
      assert_select "input#tipotratamento_tipo", :name => "tipotratamento[tipo]"
    end
  end
end
