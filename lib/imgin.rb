# ImagIn program takes a word (or string) as an argument and
# returns a URL or an image based on an image search of that word or string

# require CGI
require 'open-uri'
require 'nokogiri'

# takes the search_phrase and returns a URL that contains
# search results which are images found (such as a Google Images search results page)
class Imgin

  def initialize

  end

  def get_search_results(search_phrase)
    search_phrase.gsub!(/\s/) { '+' }
    page = Nokogiri::HTML(open("https://images.search.yahoo.com/search/images?p=#{search_phrase}"))
  end

  # takes the search_results_URL and returns the URL of just one image

  def extract_links_to_imgs(page)
    links_to_imgs = []
    page.css('li.ld a').each {|link| links_to_imgs << link['href']}
    links_to_imgs
  end

  def parse_image_links(links)
    img_urls = []
    img_url_pattern = /.*(imgurl=)(.*\.(jpg|jpeg|png|gif|svg))/
    links.each do |link|
      img_urls << img_url_pattern.match(link)[2]
    end
    img_urls
  end

  def select_image(img_urls)
    img_urls.sample
  end

  def imgin(search_phrase)
    # imgin method calls the other methods to return the end result.
    select_image(get_search_results(search_phrase))
  end

end


#### This goes out
test = Imgin.new
page = test.get_search_results('Paulyshore')
# require 'debugger'; debugger
links = test.extract_links_to_imgs(page)
p test.parse_image_links(links)