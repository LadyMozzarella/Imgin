# ImagIn program takes a word (or string) as an argument and
# returns a URL or an image based on an image search of that word or string

# require CGI
require 'open-uri'
require 'nokogiri'

# DRAFT - draft not final text/comments

# the rest is coming! right now!

# takes the search_phrase and returns a URL that contains
# search results which are images found (such as a Google Images search results page)
def get_search_results(search_phrase)

end

# takes the search_results_URL and returns the URL of just one image
def select_image(search_results_URL)

end

def imagin(search_phrase)
  # imagin method calls the other methods to return the end result.
  select_image(get_search_results(search_phrase))
end
