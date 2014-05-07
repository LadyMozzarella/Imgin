# ImagIn program takes a word (or string) as an argument and
# returns a URL or an image based on an image search of that word or string

module Imgin
  require 'open-uri'
  require 'nokogiri'

  class Image
    class << self
      def get_search_results(search_phrase, size)
        size_hash = { :small => "&imgsz=icon", :medium => "&imgsz=medium",
                    :large => "&imgsz=large", :huge => "&imgsz=wallpaper"}

        search_phrase.gsub!(/\s/) { '+' }
        page = Nokogiri::HTML(open("https://images.search.yahoo.com/search/images?p=#{search_phrase}#{size_hash[size.to_sym]}"))
      end

      def extract_links_to_imgs(page)
        links_to_imgs = []
        page.css('li.ld a').each {|link| links_to_imgs << link['href']}
        links_to_imgs
      end

      def parse_image_links(links)
        img_urls = []
        img_url_pattern = /.*(imgurl=)(.*\.(jpg|jpeg|png|gif|svg))/
        links.each do |link|
          link_match = img_url_pattern.match(link)
          if link_match
            img_urls << link_match[2]
          end
        end
        img_urls
      end

      def reformat_urls(img_urls)
        img_urls.each do |url|
          url.gsub!(/(%2F)/) { '/' }.gsub!(/(%2520)/) { '%20' }
        end
      end

      def select_image(img_urls)
        img_urls.sample
      end

      def get(search_phrase, size="")
        links_to_imgs = extract_links_to_imgs(get_search_results(search_phrase, size))
        img_links = parse_image_links(links_to_imgs)
        select_image(reformat_urls(img_links))
      end
    end
  end
end

