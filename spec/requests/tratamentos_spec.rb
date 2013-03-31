require 'spec_helper'

describe "Tratamentos" do
  describe "GET /tratamentos" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get tratamentos_path
      response.status.should be(200)
    end
  end
end
