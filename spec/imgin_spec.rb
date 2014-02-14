require_relative '../lib/imagin'

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


