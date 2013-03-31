require 'spec_helper'

describe "doencas/edit" do
  before(:each) do
    @doenca = assign(:doenca, stub_model(Doenca,
      :nomepopular => "MyString",
      :nomebio => "MyString",
      :historico => "MyString",
      :descricao => "MyString",
      :causa => "MyString",
      :tipodoenca => nil
    ))
  end

  it "renders the edit doenca form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => doencas_path(@doenca), :method => "post" do
      assert_select "input#doenca_nomepopular", :name => "doenca[nomepopular]"
      assert_select "input#doenca_nomebio", :name => "doenca[nomebio]"
      assert_select "input#doenca_historico", :name => "doenca[historico]"
      assert_select "input#doenca_descricao", :name => "doenca[descricao]"
      assert_select "input#doenca_causa", :name => "doenca[causa]"
      assert_select "input#doenca_tipodoenca", :name => "doenca[tipodoenca]"
    end
  end
end
