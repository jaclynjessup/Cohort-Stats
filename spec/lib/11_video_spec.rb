require "spec_helper"

describe Video do
  let (:video) {Video.new("12 Grimmauld Place", "The Order of the Phoenix", "www.howtogetin.magic")}
  describe ".new" do
    it "takes a name and body as arguments" do
      expect(video).to be_a(Video)
    end
  end

  describe "has a reader for name and body" do
    it "checks to make sure we can read the name and body variables" do
      expect(video.name).to eq("12 Grimmauld Place")
      expect(video.body).to eq("The Order of the Phoenix")
      expect(video.url).to eq("www.howtogetin.magic")
    end

    it "has a writer for name and body" do
      video.name = "Hogsmeade"
      video.body = "Walk to the village"
      expect(video.name).to eq("Hogsmeade")
      expect(video.body).to eq("Walk to the village")
    end

    it "Does not have a writer for url" do
      expect { video.url = "wwww.Marauders.Map" }.to raise_error(NoMethodError)
    end
  end

  describe "#submittable?" do
    it "returns false" do
      expect(video.submittable?).to eq(false)
    end
  end
end
