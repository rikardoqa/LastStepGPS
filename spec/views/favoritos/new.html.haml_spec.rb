require 'spec_helper'

describe "favoritos/new" do
  before(:each) do
    assign(:favorito, stub_model(Favorito,
      :nomeLocal => "MyString",
      :posicionamento => nil,
      :usuario => nil
    ).as_new_record)
  end

  it "renders new favorito form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", favoritos_path, "post" do
      assert_select "input#favorito_nomeLocal[name=?]", "favorito[nomeLocal]"
      assert_select "input#favorito_posicionamento[name=?]", "favorito[posicionamento]"
      assert_select "input#favorito_usuario[name=?]", "favorito[usuario]"
    end
  end
end
