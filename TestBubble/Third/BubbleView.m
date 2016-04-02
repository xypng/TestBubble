//
//  BubbleView.m
//  TestBubble
//
//  Created by XiaoYiPeng on 16/3/31.
//  Copyright © 2016年 XiaoYiPeng. All rights reserved.
//

#import "BubbleView.h"

#define kArrowHeight 10

@implementation BubbleView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    if (self)
        self.backgroundColor = [UIColor clearColor];
    
    return self;
}

- (void)drawRect:(CGRect)rect {
    [self drawInContext:UIGraphicsGetCurrentContext()];
    
    self.layer.shadowColor = [[UIColor blackColor] CGColor];
    self.layer.shadowOpacity = 1.0;
    self.layer.shadowOffset = CGSizeMake(0.0f, 0.0f);
}

- (void)drawInContext:(CGContextRef)context {
    CGContextSetLineWidth(context, 2.0);
    CGContextSetFillColorWithColor(context, [UIColor colorWithRed:0.3 green:0.3 blue:0.3 alpha:0.8].CGColor);
    
    [self getDrawPath:context];
    CGContextFillPath(context);
}

- (void)getDrawPath:(CGContextRef)context {
    
    CGRect rect = self.bounds;
    CGFloat radius = 6.0;
    CGFloat minX = CGRectGetMinX(rect), midX = CGRectGetMidX(rect), maxX = CGRectGetMaxX(rect);
    CGFloat minY = CGRectGetMinY(rect), maxY = CGRectGetMaxY(rect) - kArrowHeight;
    
    CGContextMoveToPoint(context, midX + kArrowHeight, maxY);
    CGContextAddLineToPoint(context, midX, maxY + kArrowHeight);
    CGContextAddLineToPoint(context, midX - kArrowHeight, maxY);
    
    CGContextAddArcToPoint(context, minX, maxY, minX, minY, radius);
    CGContextAddArcToPoint(context, minX, minX, maxX, minY, radius);
    CGContextAddArcToPoint(context, maxX, minY, maxX, maxX, radius);
    CGContextAddArcToPoint(context, maxX, maxY, midX, maxY, radius);
    CGContextClosePath(context);
}

@end
