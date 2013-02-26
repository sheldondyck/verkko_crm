require 'spec_helper'

describe "prospects/index" do
  before(:each) do
    assign(:prospects, [
      stub_model(Prospect,
        :nome_contato => "Nome Contato",
        :nome_empressa => "Nome Empressa",
        :telefone_empressa => "Telefone Empressa",
        :telefone_celular => "Telefone Celular",
        :endereco => "Endereco"
      ),
      stub_model(Prospect,
        :nome_contato => "Nome Contato",
        :nome_empressa => "Nome Empressa",
        :telefone_empressa => "Telefone Empressa",
        :telefone_celular => "Telefone Celular",
        :endereco => "Endereco"
      )
    ])
  end

  it "renders a list of prospects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome Contato".to_s, :count => 2
    assert_select "tr>td", :text => "Nome Empressa".to_s, :count => 2
    assert_select "tr>td", :text => "Telefone Empressa".to_s, :count => 2
    assert_select "tr>td", :text => "Telefone Celular".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
  end
end
