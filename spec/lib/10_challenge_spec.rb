require "spec_helper"

describe Challenge do
  let (:challenge) {Challenge.new("The Battle of Hogwarts", "Defeat Vol De Mort")}
  describe ".new" do
    it "takes a name and body as arguments" do
      expect(challenge).to be_a(Challenge)
    end
  end

  describe "has a reader for name and body" do
    it "checks to make sure we can read the name and body variables" do
      expect(challenge.name).to eq("The Battle of Hogwarts")
      expect(challenge.body).to eq("Defeat Vol De Mort")
    end

    it "has a writer for name and body" do
      challenge.name = "Quidditch"
      challenge.body = "Coding on Broomsticks"
      expect(challenge.name).to eq("Quidditch")
      expect(challenge.body).to eq("Coding on Broomsticks")
    end
  end

  describe "#submittable?" do
    it "returns true" do
      expect(challenge.submittable?).to eq(true)
    end
  end
end
