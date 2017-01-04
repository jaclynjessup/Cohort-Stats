require "spec_helper"

describe Article do
  let (:article) {Article.new("Wizard", "You're a coding wizard Harry")}
  describe ".new" do
    it "takes a name and body as arguments" do
      expect(article).to be_a(Article)
    end
  end

  describe "has a reader for name and body" do
    it "checks to make sure we can read the name and body variables" do
      expect(article.name).to eq("Wizard")
      expect(article.body).to eq("You're a coding wizard Harry")
    end

    it "has a writer for name and body" do
      article.name = "Ron & Hermione"
      article.body = "Use your coding crew to help you, always"
      expect(article.name).to eq("Ron & Hermione")
      expect(article.body).to eq("Use your coding crew to help you, always")
    end
  end

  describe "#submittable?" do
    it "returns false" do
      expect(article.submittable?).to eq(false)
    end
  end
end
