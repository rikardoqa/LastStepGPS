require 'spec_helper'

describe "posicionamentos/new" do
  before(:each) do
    assign(:posicionamento, stub_model(Posicionamento,
      :posicao => "MyString",
      :data => "MyString",
      :horario => "MyString",
      :usuario => nil
    ).as_new_record)
  end

  it "renders new posicionamento form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", posicionamentos_path, "post" do
      assert_select "input#posicionamento_posicao[name=?]", "posicionamento[posicao]"
      assert_select "input#posicionamento_data[name=?]", "posicionamento[data]"
      assert_select "input#posicionamento_horario[name=?]", "posicionamento[horario]"
      assert_select "input#posicionamento_usuario[name=?]", "posicionamento[usuario]"
    end
  end
end
