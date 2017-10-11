//
//  ProductLine.swift
//  AppleProducts
//
//  Created by Ikhsan on 27/9/17.
//  Copyright © 2017 Ikhsan. All rights reserved.
//

import UIKit

class ProductLine
{
    var name: String
    var products: [Product]
    
    init(named: String, includeProducts: [Product])
    {
        name = named
        products = includeProducts
    }
    
    //static func
    class func getProductLines() -> [ProductLine]
    {
        return [iDevices(), mac(), software(), iPod()]
    }
    
    //MARK: - Private Helper Method
    
    private class func iDevices() -> ProductLine {
        //  (1) iDevices: Apple Watch, iPad, iPhone, iOS
        var products = [Product]()
        
        products.append(Product(titled: "Apple Watch", description: "Featuring revolutionary new technologies and a pioneering user interface with a beautiful design that honors the rich tradition of precision watchmaking.", imageName: "apple-watch"))
        products.append(Product(titled: "iPad", description: "iPad Air 2 is the thinnest and most powerful iPad ever. With iPad, we’ve always had a somewhat paradoxical goal: to create a device that’s immensely powerful, yet so thin and light you almost forget it’s there.", imageName: "ipad-air2"))
        products.append(Product(titled: "iPhone", description: "The biggest advancements in iPhone history, featuring two models with stunning 4.7-inch and 5.5-inch Retina HD displays.", imageName: "iphone6"))
        products.append(Product(titled: "iOS", description: "iOS is the world’s most advanced operating system. Its easy-to-use interface, amazing features, and rock-solid stability are built into every iPhone, iPad, and iPod touch.", imageName: "iOS8"))
        
        return ProductLine(named: "iDevices", includeProducts: products)
    }
    
    //  (2) Mac: MacBook, MacBook Pro with Retina Display, MacBook Air, iMac
    //           Mac Pro, MacBook Pro, Mac Mini, Display, Airport Extreme,
    //           AirPort Time Capsule, AirPort Express, Magic Trackpad
    //           Magic Mouse, Apple Keyboard, Apple Battery Charger
    
    private class func mac() -> ProductLine
    {
        var products = [Product]()
        
        products.append(Product(titled: "MacBook", description: "The thinnest and lightest Mac ever with every component meticulously redesigned to create a Mac that is just two pounds and 13.1 mm thin. ", imageName: "macbook"))
        products.append(Product(titled: "MacBook Pro 13 inch", description: "MacBook Pro features the latest dual-core and quad-core processors, and faster graphics to deliver the perfect combination of pro performance and extreme portability.", imageName: "macbook-pro-13"))
        products.append(Product(titled: "MacBook Pro with Retina Display", description: "A stunning high-resolution display, an amazing thin and light design, and the latest technology to power through the most demanding projects.", imageName: "macbook-pro-retina"))
        products.append(Product(titled: "MacBook Air", description: "All day battery life, fourth generation Intel Core processors with faster graphics, 802.11ac Wi-Fi and flash storage that is up to 45 percent faster than the previous generation.", imageName: "macbook-air"))
        products.append(Product(titled: "iMac", description: "The 27-inch iMac with Retina 5K display features a breathtaking 14.7 million pixel display so text appears sharper than ever, videos are unbelievably lifelike.", imageName: "imac-5k"))
        products.append(Product(titled: "Mac Pro", description: "Designed around a revolutionary unified thermal core, the Mac Pro introduces a completely new pro desktop architecture and design that is optimized for performance inside and out.", imageName: "mac-pro"))
        products.append(Product(titled: "Mac Mini", description: "With its sleek aluminum design, a removable bottom panel for easy access to memory, and a space-saving built-in power supply, Mac mini is pretty incredible.", imageName: "mac-mini"))
        products.append(Product(titled: "Displays", description: "The 27-inch Apple LED Cinema Display supersizes your view with an incredible 2560-by-1440 resolution.", imageName: "display"))
        products.append(Product(titled: "Airport Extreme", description: "Featuring 802.11ac Wi-Fi for up to three times faster performance.", imageName: "airport-extreme"))
        
        return ProductLine(named: "Mac", includeProducts: products)
    }
    
    //  (3) Software: OS X, iLife, iWork, Logic Pro X, Final Cut Pro X, Aperture
    
    private class func software() -> ProductLine
    {
        var products = [Product]()
        
        products.append(Product(titled: "OS X", description: "Built on a rock-solid UNIX foundation, OS X is engineered to take full advantage of the technologies in every new Mac.", imageName: "os-x"))
        products.append(Product(titled: "iLife", description: "Do more with movies and music than you ever thought possible.", imageName: "ilife"))
        products.append(Product(titled: "iWork", description: " iWork is the easiest way to create great-looking documents, spreadsheets, and presentations. ", imageName: "iwork"))
        products.append(Product(titled: "Logic Pro X", description: "Logic Pro X, the most advanced version of Logic Pro to date, with a new interface designed for pros.", imageName: "logic-pro-x"))
        products.append(Product(titled: "Final Cut Pro X", description: "A revolutionary new version of the world’s most popular Pro video editing software which completely reinvents video editing.", imageName: "final-cut-pro-x"))
        products.append(Product(titled: "Aperture", description: "Featuring revolutionary new technologies and a pioneering user interface with a beautiful design that honors the rich tradition of precision watchmaking.", imageName: "aperture"))
        
        return ProductLine(named: "Software", includeProducts: products)
    }
    
    //  (4) iPod: Apple TV, iPod nano, iPod shuffle, iPod touch, iTunes
    
    private class func iPod() -> ProductLine
    {
        var products = [Product]()
        
        products.append(Product(titled: "iPod nano", description: "The thinnest iPod ever featuring a 2.5-inch Multi-Touch display; convenient navigation buttons; built-in Bluetooth for wireless listening; and the iPod nano comes in seven gorgeous colors.", imageName: "ipod-nano"))
        products.append(Product(titled: "iPod shuffle", description: "Crafted from a single piece of aluminium and polished to a beautiful shine, iPod shuffle feels solid, sleek and durable.", imageName: "ipod-shuffle"))
        products.append(Product(titled: "iPod touch", description: "Featuring a brilliant 4-inch Retina display; a 5-megapixel iSight camera with 1080p HD video recording.", imageName: "ipod-touch"))
        products.append(Product(titled: "iTunes", description: "A free application for your Mac or PC, iTunes organizes and plays your digital music and video on your computer.", imageName: "itunes"))
        products.append(Product(titled: "Apple TV", description: "Access to tons of great HD content in a tiny package. Enjoy blockbuster movies, TV shows, live sports and news, your music, photos, and more — right on your high-definition TV.", imageName: "apple-tv"))
        
        return ProductLine(named: "iPod and iTunes", includeProducts: products)
    }
}
