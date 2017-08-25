//
//  ImageLoader.swift
//
// Copyright (c) 2017 Florian PETIT <florianp37@me.com>
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//

import UIKit

/**
 ImageLoaderAdapter protocol
 */
protocol ImageLoaderAdapter {
    /**
     load an image
     - parameter url:           the URL of the image to be loaded
     - parameter imageView:     the imageView that should contain the image loaded
     */
    func loadImage(url: URL, imageView: UIImageView)
    
    /**
     load an image using a placeholder in the meantime
     - parameter url:           the URL of the image to be loaded
     - parameter placeholder:     the UIImage that should be used as a placeholder
     - parameter imageView:     the imageView that should contain the image loaded
     */
    func loadImage(url: URL, placeholder: UIImage, imageView: UIImageView)
    
}

/**
 A class used to load images asynchronously
 */
public class ImageLoader: NSObject {
    /// An adapter used to load the image
    var imageLoaderAdapter: ImageLoaderAdapter?
    
    /**
     Initializes an imageLoader according the selected implementation
     */
    public override init() {
        #if RPKingfisher
            imageLoaderAdapter = KingFisherAdapter()
        #endif
        #if RPNuke
            imageLoaderAdapter = NukeAdapter()
        #endif
        #if RPSDWebImage
            imageLoaderAdapter = SDWebImageAdapter()
        #endif
    }
    
    
    /**
     Load an image with the configured adapter
     - parameter url:           the URL of the image to be loaded
     - parameter imageView:     the imageView that should contain the image loaded
     */
    public func loadImage(url: URL, imageView: UIImageView) {
        self.imageLoaderAdapter?.loadImage(url: url, imageView: imageView)
    }
    
    /**
     load an image using a placeholder in the meantime
     - parameter url:           the URL of the image to be loaded
     - parameter placeholder:     the UIImage that should be used as a placeholder
     - parameter imageView:     the imageView that should contain the image loaded
     */
    public func loadImage(url: URL, placeholder: UIImage, imageView: UIImageView){
        self.imageLoaderAdapter?.loadImage(url: url, placeholder: placeholder, imageView: imageView)
    }
    
    
}
