require_relative '../lib/imgin'

describe Imgin::Image do
  it "should return a Nokogiri Class Object" do
    expect(Imgin::Image.get_search_results('cats').class).to eq(Nokogiri::HTML::Document)
  end

  it "should return an array" do
    expect(Imgin::Image.extract_links_to_imgs(Imgin::Image.get_search_results('sun')).class).to eq(Array)
  end

  it "should return an array" do
    expect(Imgin::Image.parse_image_links(["imgurl=Mason.jpg"])).to eq(["Mason.jpg"])
  end

  it "should return an array" do
    expect(Imgin::Image.reformat_urls(["Brittany%2FMazza%2FRocks", "Ivan%2FThe%2FBAUS"])).to eq(["Brittany/Mazza/Rocks", "Ivan/The/BAUS"])
  end

  it "should return a string from the array " do
    expect(Imgin::Image.select_image(["Brittany/Mazza/Rocks", "Ivan/The/BAUS"]).class).to eq(String)
  end

  it "should return an image file" do
    expect(Imgin::Image.get("cats")).to  match(/.+\.(png|jpg|gif|svg)/)
  end
end

