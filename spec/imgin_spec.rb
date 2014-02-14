require_relative '../lib/imagin'

<<<<<<< HEAD
# before
describe 'search' do
  it "should return a google images webpage" do
    Imgin.search('cats') == Nokogiri::HTML(open("https://www.google.com/search?site=imghp&tbm=isch&q=cats"))
  end

end

describe select_img do
  it "should return an image file" do
    cats = Nokogiri::HTML(open("https://www.google.com/search?site=imghp&tbm=isch&q=cats"))
    Imgin.select_img(cats) =~ /.+\.(png|jpg|gif|svg)/
  end
end


=======
describe Image do
  let(:image) { Image.new }
    it "should return a google images webpage" do
      expect(image.get_search_results('cats').class).to eq(Nokogiri::HTML::Document)
    end

  it "should return an image file" do
    cats = Nokogiri::HTML(open("https://www.google.com/search?site=imghp&tbm=isch&q=cats"))
    expect(image.select_image(cats)).to  match(/.+\.(png|jpg|gif|svg)/)
  end
end
>>>>>>> master
