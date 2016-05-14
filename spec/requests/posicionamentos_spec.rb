require 'spec_helper'

describe "Posicionamentos" do
  describe "GET /posicionamentos" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get posicionamentos_path
      response.status.should be(200)
    end
  end
end
