require 'spec_helper'

describe "prospects/show" do
  before(:each) do
    @prospect = assign(:prospect, stub_model(Prospect,
      :nome_contato => "Nome Contato",
      :nome_empressa => "Nome Empressa",
      :telefone_empressa => "Telefone Empressa",
      :telefone_celular => "Telefone Celular",
      :endereco => "Endereco"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome Contato/)
    rendered.should match(/Nome Empressa/)
    rendered.should match(/Telefone Empressa/)
    rendered.should match(/Telefone Celular/)
    rendered.should match(/Endereco/)
  end
end
