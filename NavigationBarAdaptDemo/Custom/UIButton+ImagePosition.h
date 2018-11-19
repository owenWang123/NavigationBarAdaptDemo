//
//  UIButton+ImagePosition.h
//  SkeletonDemo
//
//  Created by 王浩田 on 2017/8/21.
//  Copyright © 2017年 王浩田. All rights reserved.
//

#import <UIKit/UIKit.h>

// 定义一个枚举（包含了四种类型的button）
typedef NS_ENUM(NSUInteger, HTButtonImagePositionStyle) {
    HTButtonImagePositionStyleTop, // image在上，label在下
    HTButtonImagePositionStyleLeft, // image在左，label在右
    HTButtonImagePositionStyleBottom, // image在下，label在上
    HTButtonImagePositionStyleRight // image在右，label在左
};
//使用需设置button的宽高
@interface UIButton (ImagePosition)
/**
 * 设置button的titleLabel和imageView的布局样式，及间距
 *
 * @param style titleLabel和imageView的布局样式
 * @param space titleLabel和imageView的间距
 */
- (void)ht_layoutButtonWithImagePositionStyle:(HTButtonImagePositionStyle)style imageTitleSpace:(CGFloat)space;

@end
