# ImagIn program takes a word (or string) as an argument and
# returns a URL or an image based on an image search of that word or string

# require CGI
require 'open-uri'
require 'nokogiri'

# DRAFT - draft not final text/comments

# the rest is coming! right now!

# takes the search_phrase and returns a URL that contains
# search results which are images found (such as a Google Images search results page)
class Imgin

  def initialize

  end

  def get_search_results(search_phrase)
    page = Nokogiri::HTML(open("https://www.google.com/search?site=imghp&tbm=isch&q=#{search_phrase}"))
  end

  # takes the search_results_URL and returns the URL of just one image

  def extract_images(page)
    img_urls = []
    page.css('a').each {|img| img_urls << img['href']}
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

# class Imgin

#   def initialize

#   end

#   def get_search_results(search_phrase)
#     page = Nokogiri::HTML(open("http://www.flickr.com/search/?q=#{search_phrase}"))
#   end

#   # takes the search_results_URL and returns the URL of just one image

#   def extract_images(page)
#     img_urls = []
#     page.css('a.rapidnofollow img').each {|img| img_urls << img['href']}
#     # page.css('a').each {|img| img_urls << img['href']}
#     img_urls
#   end

#   def select_image(img_urls)
#     img_urls.sample
#   end

#   def imgin(search_phrase)
#     # imgin method calls the other methods to return the end result.
#     select_image(get_search_results(search_phrase))
#   end

# end


#### This goes out
test = Imgin.new
p page = test.get_search_results('Paulyshore')
# require 'debugger'; debugger
p test.extract_images(page)[15]