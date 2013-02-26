require 'spec_helper'

describe "prospects/edit" do
  before(:each) do
    @prospect = assign(:prospect, stub_model(Prospect,
      :nome_contato => "MyString",
      :nome_empressa => "MyString",
      :telefone_empressa => "MyString",
      :telefone_celular => "MyString",
      :endereco => "MyString"
    ))
  end

  it "renders the edit prospect form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", prospect_path(@prospect), "post" do
      assert_select "input#prospect_nome_contato[name=?]", "prospect[nome_contato]"
      assert_select "input#prospect_nome_empressa[name=?]", "prospect[nome_empressa]"
      assert_select "input#prospect_telefone_empressa[name=?]", "prospect[telefone_empressa]"
      assert_select "input#prospect_telefone_celular[name=?]", "prospect[telefone_celular]"
      assert_select "input#prospect_endereco[name=?]", "prospect[endereco]"
    end
  end
end
