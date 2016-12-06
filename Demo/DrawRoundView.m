//
//  DrawRoundView.m
//  Post
//
//  Created by chuang Hao on 2016/11/30.
//  Copyright © 2016年 BML. All rights reserved.
//

#import "DrawRoundView.h"
#define KSCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define WidthRadio KSCREEN_WIDTH/375
@implementation DrawRoundView

- (void) setFillColor:(UIColor *)fillColor{
    _fillColor = fillColor;
    if (_fillColor) {
        [self setNeedsDisplay];
    }
}

- (void)drawRect:(CGRect)rect {
    // Bezier view Drawing
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(240.92 * WidthRadio, 21)];
    [bezierPath addLineToPoint: CGPointMake(KSCREEN_WIDTH, 21)];
    [bezierPath addLineToPoint: CGPointMake(KSCREEN_WIDTH, 73)];
    [bezierPath addLineToPoint: CGPointMake(0, 73)];
    [bezierPath addLineToPoint: CGPointMake(0, 21)];
    [bezierPath addLineToPoint: CGPointMake(135.08 * WidthRadio, 21)];
    [bezierPath addCurveToPoint: CGPointMake(188 * WidthRadio, 1) controlPoint1: CGPointMake(149.19 * WidthRadio, 8.55) controlPoint2: CGPointMake(167.71 * WidthRadio, 1)];
    [bezierPath addCurveToPoint: CGPointMake(240.92 * WidthRadio, 21) controlPoint1: CGPointMake(208.29 * WidthRadio, 1) controlPoint2: CGPointMake(226.81 * WidthRadio, 8.55)];
    [bezierPath closePath];
    [self.fillColor setFill];
    [bezierPath fill];
    
    // Bezier line Drawing
    UIBezierPath *bezier2Path = [UIBezierPath bezierPath];
    [bezier2Path moveToPoint: CGPointMake(0, 21)];
    [bezier2Path addLineToPoint: CGPointMake(135.08 * WidthRadio, 21)];
    [bezier2Path addCurveToPoint: CGPointMake(188 * WidthRadio, 1) controlPoint1: CGPointMake(149.19 * WidthRadio, 8.55) controlPoint2: CGPointMake(167.71 * WidthRadio, 1)];
    [bezier2Path addCurveToPoint: CGPointMake(240.92 * WidthRadio, 21) controlPoint1: CGPointMake(208.29 * WidthRadio, 1) controlPoint2: CGPointMake(226.81 * WidthRadio, 8.55)];
    [bezier2Path addLineToPoint: CGPointMake(KSCREEN_WIDTH, 21)];
    [[UIColor colorWithRed:233 green:233 blue:233 alpha:1.0] setStroke];
    bezier2Path.lineWidth = 1;
    [bezier2Path stroke];
}

@end
