require 'spec_helper'

describe "prospects/new" do
  before(:each) do
    assign(:prospect, stub_model(Prospect,
      :nome_contato => "MyString",
      :nome_empressa => "MyString",
      :telefone_empressa => "MyString",
      :telefone_celular => "MyString",
      :endereco => "MyString"
    ).as_new_record)
  end

  it "renders new prospect form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", prospects_path, "post" do
      assert_select "input#prospect_nome_contato[name=?]", "prospect[nome_contato]"
      assert_select "input#prospect_nome_empressa[name=?]", "prospect[nome_empressa]"
      assert_select "input#prospect_telefone_empressa[name=?]", "prospect[telefone_empressa]"
      assert_select "input#prospect_telefone_celular[name=?]", "prospect[telefone_celular]"
      assert_select "input#prospect_endereco[name=?]", "prospect[endereco]"
    end
  end
end
