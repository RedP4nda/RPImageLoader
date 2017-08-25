RPImageLoader
============

[![Build Status](https://travis-ci.org/RedP4nda/RPImageLoader.svg?branch=master)](https://travis-ci.org/RedP4nda/RPImageLoader)
[![Twitter](https://img.shields.io/badge/twitter-@Florian_MrCloud-blue.svg?style=flat)](http://twitter.com/Florian_MrCloud)

# Disclaimer:

- This program is still under active development and in its early stage, consider that breaking changes and rewrites could occur before using it in a stable version.


RPImageLoader is a wrapper for asynchronous image-loading libraries for iOS.

- [Features](#features)
- [The Basics](#the-basics)
- [To Do](#to-do)
- [Contributing](#contributing)
- [Installation](#installation)

# Features:

# The Basics
RPImageLoader helps you use any of the provided implementation of asynchronous image-loading and quickly change the chosen implementation by updating the podfile used in your project, thus this projectis highly dependant on CocoaPods.


```swift
// Simple usage whatever the provided implementation you choose
let imageView = UIImageView()
let url = URL(string: "http://www.example.com")!
ImageLoader().loadImage(url: url, imageView: imageView)
```

```swift
// Or using a placeholder image
let imageView = UIImageView()
let url = URL(string: "http://www.example.com")!
let placeholder = UIImage(named: "imageName")!
ImageLoader().loadImage(url: url, placeholder: placeholder, imageView: imageView)
```


In order to switch between the provided libraries you just need to update the podfile:

for example from:
```ruby
pod 'RPImageLoader/KingFisher', '~> 0.9'
```

to:
```ruby
pod 'RPImageLoader/SDWebImage', '~> 0.9'
```

# To Do
- Support more image-loading APIs methods, with more options, cache policies...
-

# Installation
### Cocoapods
RPImageLoader can be added to your project using [CocoaPods](http://cocoapods.org) by adding the following lines to your `Podfile`:

```ruby
source 'https://github.com/RedP4nda/Specs'

pod 'RPImageLoader/KingFisher', '~> 0.9'
```

## Contributors
[![MrCloud](https://avatars2.githubusercontent.com/u/486140?s=100)](https://github.com/MrCloud)

## Partner
<img src="https://github.com/MobileTribe/pandroid/raw/master/pandroid-doc/assets/partner/lm.jpg" width="100" height="100" />

# Contributing

Contributions are very welcome 👍😃.

Before submitting any pull request, please ensure you have run the included tests (if any) and they have passed. If you are including new functionality, please write test cases for it as well.
