//
//  SHConfig.swift
//  SHPhotoPhoto
//
//  Created by shark on 2021/3/24.
//

import UIKit

@_exported import YPImagePicker
@_exported import KeychainAccess

public let SHScreenSize = UIScreen.main.bounds
public let SHScreenWidth = SHScreenSize.width
public let SHScreenHeight = SHScreenSize.height


public func SHFontSize(size: CGFloat) -> UIFont {
    return UIFont.systemFont(ofSize: size)
}

public func SHFontBodySize(size: CGFloat) -> UIFont {
    return UIFont.boldSystemFont(ofSize: size)
}

public func SHFontLightSize(size: CGFloat) -> UIFont {
    return UIFont.systemFont(ofSize: size, weight: .light)
}

public func SHFontThinSize(size: CGFloat) -> UIFont {
    return UIFont.systemFont(ofSize: size, weight: .thin)
}

public func SHFontRegularSize(size: CGFloat) -> UIFont {
    return UIFont.systemFont(ofSize: size, weight: .regular)
}

public func SHFontMediumSize(size: CGFloat) -> UIFont {
    return UIFont.systemFont(ofSize: size, weight: .medium)
}

public func SHColor(value: NSInteger) -> UIColor {
    return SHColorAlpha(value: value, alpha: 1)
}

public func SHColorAlpha(value: NSInteger, alpha: CGFloat) -> UIColor {
    return UIColor.init(red: CGFloat(((value >> 16) & 0xFF))/255.0, green: CGFloat(((value >> 8) & 0xFF))/255.0, blue: CGFloat((value & 0xFF))/255.0, alpha: alpha)
}
