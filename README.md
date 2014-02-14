#ImgIn
=====
ImgIn allows you to get a random image with your specified content search. It works like this:
```ruby
Imgin::Image.get("banana slug") # => "fc06.deviantart.net/fs71/i/2013/022/3/7/banana_slugs_by_hanakoheals-d5scksb.jpg"
```
The URL can be used for whatever case you might need it.

Here's what the above URL goes to:
![http://fc06.deviantart.net/fs71/i/2013/022/3/7/banana_slugs_by_hanakoheals-d5scksb.jpg](http://fc06.deviantart.net/fs71/i/2013/022/3/7/banana_slugs_by_hanakoheals-d5scksb.jpg)

#Installation
=====
Install gem. *once we're on rubygems.org.
```
$ gem install 'imgin'
```

#Usage
=====
Require ImgIn at the top of your file.
```
require 'imgin'
```

Fetch one image URL.
```
Imgin::Image.get( **insert your string** )
```

#Authors
=====
ImgIn Gem by Team Awesomos (Mason, Iván, José, Brittany)