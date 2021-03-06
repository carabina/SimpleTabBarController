//
//  SimpleTabBarItemAnimator.swift
//  Pods
//
//  Created by Nicholas Mata on 10/25/16.
//
//

import UIKit
import Foundation

open class SimpleTabBarItemAnimator: NSObject, SimpleTabBarItemAnimatorProtocol {
    
    open weak var content: UIView?
    
    open var textColor = UIColor.init(white: 146.0 / 255.0, alpha: 1.0)
    open var highlightTextColor = UIColor.init(red: 0.0 / 255.0, green: 116.0 / 255.0, blue: 255.0 / 255.0, alpha: 1.0)
    open var iconColor = UIColor.init(white: 146.0 / 255.0, alpha: 1.0)
    open var highlightIconColor = UIColor.init(red: 0.0 / 255.0, green: 116.0 / 255.0, blue: 255.0 / 255.0, alpha: 1.0)
    open var backgroundColor = UIColor.clear
    open var highlightBackgroundColor = UIColor.clear
    
    open func selectAnimation(content: UIView, animated: Bool, completion: (() -> ())?) {
        if let content = content as? SimpleTabBarItemContent {
            content.backgroundColor = highlightBackgroundColor
            content.titleLabel.textColor = highlightTextColor
            if let image = content.imageView.image {
                let renderImage = image.withRenderingMode(.alwaysTemplate)
                content.imageView.image = renderImage
                content.imageView.tintColor = highlightIconColor
            }
        }
        completion?()
    }
    
    open func reselectAnimation(content: UIView, animated: Bool, completion: (() -> ())?) {
        if let content = content as? SimpleTabBarItemContent {
            content.backgroundColor = highlightBackgroundColor
            content.titleLabel.textColor = highlightTextColor
            if let image = content.imageView.image {
                let renderImage = image.withRenderingMode(.alwaysTemplate)
                content.imageView.image = renderImage
                content.imageView.tintColor = highlightIconColor
            }
        }
        completion?()
    }
    
    open func deselectAnimation(content: UIView, animated: Bool, completion: (() -> ())?) {
        if let content = content as? SimpleTabBarItemContent {
            content.backgroundColor = backgroundColor
            content.titleLabel.textColor = textColor
            if let image = content.imageView.image {
                let renderImage = image.withRenderingMode(.alwaysTemplate)
                content.imageView.image = renderImage
                content.imageView.tintColor = iconColor
            }
        }
        completion?()
    }
    
    open func highlightAnimation(content: UIView, animated: Bool, completion: (() -> ())?) {
        completion?()
    }
    
    open func dehighlightAnimation(content: UIView, animated: Bool, completion: (() -> ())?) {
        completion?()
    }
    
    open func badgeChangedAnimation(content: UIView, completion: (() -> ())?) {
        completion?()
    }
}
