require_relative '../lib/imgin'

describe Image do
  let(:image) { Image.new }
    it "should return a webpage" do
      expect(image.get_search_results('cats').class).to eq(Nokogiri::HTML::Document)
    end

  it "should return an image file" do
    cats = Nokogiri::HTML(open("https://www.google.com/search?site=imghp&tbm=isch&q=cats"))
    expect(image.select_image(cats)).to  match(/.+\.(png|jpg|gif|svg)/)
  end

end

