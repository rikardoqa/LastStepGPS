require 'spec_helper'

describe "posicionamentos/show" do
  before(:each) do
    @posicionamento = assign(:posicionamento, stub_model(Posicionamento,
      :posicao => "Posicao",
      :data => "Data",
      :horario => "Horario",
      :usuario => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Posicao/)
    rendered.should match(/Data/)
    rendered.should match(/Horario/)
    rendered.should match(//)
  end
end
