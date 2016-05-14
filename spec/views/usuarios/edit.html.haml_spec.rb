require 'spec_helper'

describe "usuarios/edit" do
  before(:each) do
    @usuario = assign(:usuario, stub_model(Usuario,
      :login => "MyString",
      :senha => "MyString",
      :nome => "MyString",
      :email => "MyString",
      :numero => "MyString",
      :status => false
    ))
  end

  it "renders the edit usuario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", usuario_path(@usuario), "post" do
      assert_select "input#usuario_login[name=?]", "usuario[login]"
      assert_select "input#usuario_senha[name=?]", "usuario[senha]"
      assert_select "input#usuario_nome[name=?]", "usuario[nome]"
      assert_select "input#usuario_email[name=?]", "usuario[email]"
      assert_select "input#usuario_numero[name=?]", "usuario[numero]"
      assert_select "input#usuario_status[name=?]", "usuario[status]"
    end
  end
end
