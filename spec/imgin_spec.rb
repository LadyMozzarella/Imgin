require_relative '../lib/imgin'
require 'rspec'

describe 'get_search_results' do
  it "should return a google images webpage" do
    get_search_results('cats') == Nokogiri::HTML(open("https://www.google.com/search?site=imghp&tbm=isch&q=cats"))
  end
end

describe 'select_image' do
  it "should return an image file" do
    cats = Nokogiri::HTML(open("https://www.google.com/search?site=imghp&tbm=isch&q=cats"))
    Imgin.select_image(cats) =~ /.+\.(png|jpg|gif|svg)/
  end
end