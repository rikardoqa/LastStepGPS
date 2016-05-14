require 'spec_helper'

describe "favoritos/show" do
  before(:each) do
    @favorito = assign(:favorito, stub_model(Favorito,
      :nomeLocal => "Nome Local",
      :posicionamento => nil,
      :usuario => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome Local/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
