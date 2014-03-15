//
//  ETHTopView.m
//  CPTest
//
//  Created by Marek Kotewicz on 15.03.2014.
//  Copyright (c) 2014 Marek Kotewicz. All rights reserved.
//

#import "ETHTopView.h"
#import "NSBezierPath+BezierPathQuartzUtilities.h"

@implementation ETHTopView

- (void)awakeFromNib{
    [super awakeFromNib];
    [self setupLines];
}

- (void)setupLines{
    CALayer *layer = [CALayer layer];
    layer.backgroundColor = [[NSColor colorWithRed:240.0f/255.0f green:240.0f/255.0f blue:240.0f/255.0f alpha:1.0f] CGColor];
    layer.frame = CGRectMake(0, 0, NSWidth(self.bounds), 1);
    layer.autoresizingMask = kCALayerWidthSizable;
    [self.layer addSublayer:layer];
    
    layer = [CALayer layer];
    layer.backgroundColor = [[NSColor colorWithRed:70.0f/255.0f green:70.0f/255.0f blue:70.0f/255.0f alpha:1.0f] CGColor];
    layer.frame = CGRectMake(0, 1, NSWidth(self.bounds), 1);
    layer.autoresizingMask = kCALayerWidthSizable;
    [self.layer addSublayer:layer];
    
}



@end
