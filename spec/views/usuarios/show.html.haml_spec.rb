require 'spec_helper'

describe "usuarios/show" do
  before(:each) do
    @usuario = assign(:usuario, stub_model(Usuario,
      :login => "Login",
      :senha => "Senha",
      :nome => "Nome",
      :email => "Email",
      :numero => "Numero",
      :status => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Login/)
    rendered.should match(/Senha/)
    rendered.should match(/Nome/)
    rendered.should match(/Email/)
    rendered.should match(/Numero/)
    rendered.should match(/false/)
  end
end
