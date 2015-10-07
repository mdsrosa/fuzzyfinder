require "spec_helper"

describe Fuzzy::Finder do
  let(:fuzzyfinder) { described_class }

  before :all do
    @collection =  [
      "django_migration.py",
      "main_group.rb",
      "api_user.rb",
      "user_doc.rb",
      "migration.rb",
      "admin.rb",
      "admin22.rb"
    ]
  end

  describe ".find" do
    let(:user_input) { "mig" }

    it "returns a list with matching results" do
      result = fuzzyfinder.find(user_input, @collection)
      expect(result).to be_a(Array)
      expect(result).not_to be_empty
    end

    context "the closest matching result" do
      let(:user_input_one) { "djm" }
      let(:user_input_two) { "user" }

      it "and returns a list with the first item as the closest result" do
        result = fuzzyfinder.find(user_input_one, @collection)
        expect(result[0]).to eq("django_migration.py")

        result = fuzzyfinder.find(user_input_two, @collection)
        expect(result[0]).to eq("user_doc.rb")
      end
    end

    context "receives a integer from user input" do
      let(:user_input_number) { 22 }

      it "returns a list with matching results" do
        result = fuzzyfinder.find(user_input_number, @collection)
        expect(result).to be_a(Array)
        expect(result).not_to be_empty
      end
    end
  end
end
