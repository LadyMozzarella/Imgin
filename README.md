#ImgIn

##What is ImgIn?
ImgIn allows you to get a random image with your specified content search. It also has the capability to specify a size of image. 

===

##Getting Started

###Installation
Install [ImgIn](https://rubygems.org/gems/imgin) gem.

```
$ gem install imgin
```

###Usage

Require ImgIn at the top of your file.

```
require 'imgin'
```

Fetch one image URL.

```
Imgin::Image.get( **insert your string** )
```

Place the Imgin get command anywhere in your ruby code that you need an image url. Here's an example: 

```ruby
Imgin::Image.get("banana slug") # => "fc06.deviantart.net/fs71/i/2013/022/3/7/banana_slugs_by_hanakoheals-d5scksb.jpg"
```

An extra parameter can be added in order to obtain a specific size of image. Here's an example of that:

```ruby
Imgin::Image.get("banana slug", "medium") # => "fc06.deviantart.net/fs71/i/2013/022/3/7/banana_slugs_by_hanakoheals-d5scksb.jpg"
```

There size options are icon, medium, large, and wallpaper.

The URL can be used for whatever case you might need it. It picks an image at random out of about 50 images that meet the search parameters you entered. So, you won't recieve the same image too many times if you would like to repeat the population of images. Also, the image generally will not be the same if the command is run again. 

Here's what the above URL goes to(if you're curious):
![http://fc06.deviantart.net/fs71/i/2013/022/3/7/banana_slugs_by_hanakoheals-d5scksb.jpg](http://fc06.deviantart.net/fs71/i/2013/022/3/7/banana_slugs_by_hanakoheals-d5scksb.jpg)

##Major Features
- Enter your own search parameters
- Specify the general image size

##Technology Stack
- Ruby
- (Nokogiri gem used for scraping yahoo images)

##Contributors
- [Mason O'Neal](https://github.com/MasonONeal)
- [Iván Sued](https://github.com/thefenry)
- [José Menor](https://github.com/menor)
- [Brittany Mazza](https://github.com/LadyMozzarella)


