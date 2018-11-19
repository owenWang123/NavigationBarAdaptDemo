//
//  UIBarButtonItem+SimpleInit.m
//  NavigationBarAdaptDemo
//
//  Created by 皓天 on 2018/11/19.
//  Copyright © 2018年 owen. All rights reserved.
//

#import "UIBarButtonItem+SimpleInit.h"

@implementation UIBarButtonItem (SimpleInit)
+(UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(UIImage *)image {
    return [self itemWithTarget:target action:action nomalImage:image higeLightedImage:nil imageEdgeInsets:UIEdgeInsetsZero];
}

+(UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(UIImage *)image imageEdgeInsets:(UIEdgeInsets)imageEdgeInsets {
    return [self itemWithTarget:target action:action nomalImage:image higeLightedImage:nil imageEdgeInsets:imageEdgeInsets];
}

+(UIBarButtonItem *)itemWithTarget:(id)target
                            action:(SEL)action
                        nomalImage:(UIImage *)nomalImage
                  higeLightedImage:(UIImage *)higeLightedImage
                   imageEdgeInsets:(UIEdgeInsets)imageEdgeInsets {
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    [button setImage:[nomalImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    if (higeLightedImage) {
        [button setImage:higeLightedImage forState:UIControlStateHighlighted];
    }
    [button sizeToFit];
    if (button.bounds.size.width < 40) {
        CGFloat width = 40 / button.bounds.size.height * button.bounds.size.width;
        button.bounds = CGRectMake(0, 0, width, 40);
    }
    if (button.bounds.size.height > 40) {
        CGFloat height = 40 / button.bounds.size.width * button.bounds.size.height;
        button.bounds = CGRectMake(0, 0, 40, height);
    }
    button.imageEdgeInsets = imageEdgeInsets;
    return [[UIBarButtonItem alloc] initWithCustomView:button];
    
}

+(UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action title:(NSString *)title {
    return [self itemWithTarget:target action:action title:title font:nil titleColor:nil highlightedColor:nil titleEdgeInsets:UIEdgeInsetsZero];
}

+(UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action title:(NSString *)title titleEdgeInsets:(UIEdgeInsets)titleEdgeInsets {
    return [self itemWithTarget:target action:action title:title font:nil titleColor:nil highlightedColor:nil titleEdgeInsets:titleEdgeInsets];
}

+(UIBarButtonItem *)itemWithTarget:(id)target
                            action:(SEL)action
                             title:(NSString *)title
                              font:(UIFont *)font
                        titleColor:(UIColor *)titleColor
                  highlightedColor:(UIColor *)highlightedColor
                   titleEdgeInsets:(UIEdgeInsets)titleEdgeInsets {
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    [button setTitle:title forState:UIControlStateNormal];
    button.titleLabel.font = font?font:nil;
    [button setTitleColor:titleColor?titleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button setTitleColor:highlightedColor?highlightedColor:nil forState:UIControlStateHighlighted];
    
    [button sizeToFit];
    if (button.bounds.size.width < 40) {
        CGFloat width = 40 / button.bounds.size.height * button.bounds.size.width;
        button.bounds = CGRectMake(0, 0, width, 40);
    }
    if (button.bounds.size.height > 40) {
        CGFloat height = 40 / button.bounds.size.width * button.bounds.size.height;
        button.bounds = CGRectMake(0, 0, 40, height);
    }
    button.titleEdgeInsets = titleEdgeInsets;
    return [[UIBarButtonItem alloc] initWithCustomView:button];
}

+(UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action title:(NSString *)title image:(UIImage *)image {
    return [self itemWithTarget:target action:action title:title font:nil titleColor:nil highlightedColor:nil nomalImage:image higeLightedImage:nil imagePosition:HTButtonImagePositionStyleRight imageTitleSpace:0 margin:UIEdgeInsetsZero];
}

+(UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action title:(NSString *)title image:(UIImage *)image margin:(UIEdgeInsets)margin{
    return [self itemWithTarget:target action:action title:title font:nil titleColor:nil highlightedColor:nil nomalImage:image higeLightedImage:nil imagePosition:HTButtonImagePositionStyleRight imageTitleSpace:0 margin:margin];
}

+(UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action title:(NSString *)title image:(UIImage *)image imageTitleSpace:(CGFloat)space{
    return [self itemWithTarget:target action:action title:title font:nil titleColor:nil highlightedColor:nil nomalImage:image higeLightedImage:nil imagePosition:HTButtonImagePositionStyleRight imageTitleSpace:space margin:UIEdgeInsetsZero];
}

+(UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action title:(NSString *)title image:(UIImage *)image imageTitleSpace:(CGFloat)space margin:(UIEdgeInsets)margin{
    return [self itemWithTarget:target action:action title:title font:nil titleColor:nil highlightedColor:nil nomalImage:image higeLightedImage:nil imagePosition:HTButtonImagePositionStyleRight imageTitleSpace:space margin:margin];
}

+(UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action title:(NSString *)title image:(UIImage *)image imagePosition:(HTButtonImagePositionStyle)imagePosition imageTitleSpace:(CGFloat)space{
    return [self itemWithTarget:target action:action title:title font:nil titleColor:nil highlightedColor:nil nomalImage:image higeLightedImage:nil imagePosition:imagePosition imageTitleSpace:space margin:UIEdgeInsetsZero];
}
+(UIBarButtonItem *)itemWithTarget:(id)target
                            action:(SEL)action
                             title:(NSString *)title
                              font:(UIFont *)font
                        titleColor:(UIColor *)titleColor
                  highlightedColor:(UIColor *)highlightedColor
                        nomalImage:(UIImage *)nomalImage
                  higeLightedImage:(UIImage *)higeLightedImage
                     imagePosition:(HTButtonImagePositionStyle)imagePosition
                   imageTitleSpace:(CGFloat)space
                            margin:(UIEdgeInsets)margin{
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    if (title) {
        [button setTitle:title forState:UIControlStateNormal];
        button.titleLabel.font = font?font:nil;
        [button setTitleColor:titleColor?titleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [button setTitleColor:highlightedColor?highlightedColor:nil forState:UIControlStateHighlighted];
    }
    
    if (nomalImage) {
        [button setImage:[nomalImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    }
    if (higeLightedImage) {
        [button setImage:higeLightedImage forState:UIControlStateHighlighted];
    }
    
    [button sizeToFit];
    if (button.bounds.size.width < 40) {
        CGFloat width = 40 / button.bounds.size.height * button.bounds.size.width;
        button.bounds = CGRectMake(0, 0, width, 40);
    }
    if (button.bounds.size.height > 40) {
        CGFloat height = 40 / button.bounds.size.width * button.bounds.size.height;
        button.bounds = CGRectMake(0, 0, 40, height);
    }
    
    [button ht_layoutButtonWithImagePositionStyle:imagePosition imageTitleSpace:space];
    button.contentEdgeInsets = margin;
    
    return [[UIBarButtonItem alloc] initWithCustomView:button];
}

@end
