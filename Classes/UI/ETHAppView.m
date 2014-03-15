//
//  ETHAppView.m
//  CPTest
//
//  Created by Marek Kotewicz on 15.03.2014.
//  Copyright (c) 2014 Marek Kotewicz. All rights reserved.
//

#import "ETHAppView.h"

@implementation ETHAppView

- (void)awakeFromNib{
    [super awakeFromNib];
    [self setupBackground];
}

- (void)setupBackground{
    self.layer.backgroundColor = [[NSColor colorWithRed:215.0/255.0f
                                                  green:215.0f/255.0f
                                                   blue:215.0f/255.0f
                                                  alpha:1.0f] CGColor];
}

@end
