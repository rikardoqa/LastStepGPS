require 'spec_helper'

describe "favoritos/edit" do
  before(:each) do
    @favorito = assign(:favorito, stub_model(Favorito,
      :nomeLocal => "MyString",
      :posicionamento => nil,
      :usuario => nil
    ))
  end

  it "renders the edit favorito form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", favorito_path(@favorito), "post" do
      assert_select "input#favorito_nomeLocal[name=?]", "favorito[nomeLocal]"
      assert_select "input#favorito_posicionamento[name=?]", "favorito[posicionamento]"
      assert_select "input#favorito_usuario[name=?]", "favorito[usuario]"
    end
  end
end
