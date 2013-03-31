require 'spec_helper'

describe "tratamentos/edit" do
  before(:each) do
    @tratamento = assign(:tratamento, stub_model(Tratamento,
      :metodo => "MyString",
      :tipotratamento => nil
    ))
  end

  it "renders the edit tratamento form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tratamentos_path(@tratamento), :method => "post" do
      assert_select "input#tratamento_metodo", :name => "tratamento[metodo]"
      assert_select "input#tratamento_tipotratamento", :name => "tratamento[tipotratamento]"
    end
  end
end
