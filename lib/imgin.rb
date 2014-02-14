# ImagIn program takes a word (or string) as an argument and
# returns a URL or an image based on an image search of that word or string

# require CGI
require 'open-uri'
require 'nokogiri'

# DRAFT - draft not final text/comments

# the rest is coming! right now!
# module Imgin
  class Image

    # takes the search_phrase and returns a URL that contains
    # search results which are images found (such as a Google Images search results page)
    def get_search_results(search_phrase)
      Nokogiri::HTML(open("https://www.google.com/search?site=imghp&tbm=isch&q=cats"))
    end

    # takes the search_results_URL and returns the URL of just one image
    def select_image(search_results_URL)
      "ivan.jpg"
    end

    def imgin(search_phrase)
      # imgin method calls the other methods to return the end result.
      select_image(get_search_results(search_phrase))
    end
  end
# end

