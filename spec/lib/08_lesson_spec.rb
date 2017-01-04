require "spec_helper"

describe Lesson do
  let (:lesson) {Lesson.new("Pry", "We will learn to pry till you die")}
  describe ".new" do
    it "takes a name and body as arguments" do
      expect(lesson).to be_a(Lesson)
    end
  end

  describe "has a reader for name and body" do
    it "checks to make sure we can read the name and body variables" do
      expect(lesson.name).to eq("Pry")
      expect(lesson.body).to eq("We will learn to pry till you die")
    end

    it "has a writer for name and body" do
      lesson.name = "Prying Harder"
      lesson.body = "You've pryed to your death"
      expect(lesson.name).to eq("Prying Harder")
      expect(lesson.body).to eq("You've pryed to your death")
    end
  end

  describe "#submittable?" do
    it "returns false" do
      expect(lesson.submittable?).to eq(false)
    end
  end
end
