require 'rspec'
require_relative '../lib/idgen'

RSpec.describe Idgen, "" do
  context "with random templates" do
    it "respects spaces" do
      expect(Idgen.pattern("adjective adjective").count(" ")).to eq 1
    end

    it "respects special characters" do
      expect(Idgen.pattern(":noun_noun!noun:noun").count(":")).to eq 2
    end

    it "allows first character to be capitalized" do
      expect(Idgen.pattern("Noun").scan(/[A-Z]/).length).to eq 1
    end

    it "allows all capital letters" do
      result = Idgen.pattern("NOUN")
      expect(result.upcase).to eq result
    end

    it "allows templates with no keywords" do
      result = Idgen.pattern("Lorem, ipsum dolor?")
      expect(result).to eq "Lorem, ipsum dolor?"
    end
  end
end