require 'spec_helper'

describe "posicionamentos/index" do
  before(:each) do
    assign(:posicionamentos, [
      stub_model(Posicionamento,
        :posicao => "Posicao",
        :data => "Data",
        :horario => "Horario",
        :usuario => nil
      ),
      stub_model(Posicionamento,
        :posicao => "Posicao",
        :data => "Data",
        :horario => "Horario",
        :usuario => nil
      )
    ])
  end

  it "renders a list of posicionamentos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Posicao".to_s, :count => 2
    assert_select "tr>td", :text => "Data".to_s, :count => 2
    assert_select "tr>td", :text => "Horario".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
