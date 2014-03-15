//
//  ETHSidebar.m
//  CPTest
//
//  Created by Marek Kotewicz on 15.03.2014.
//  Copyright (c) 2014 Marek Kotewicz. All rights reserved.
//

#import "ETHSidebar.h"

@implementation ETHSidebar

+ (NSSize)defaultCellSize{
    return NSMakeSize(80, 80);
}

- (BOOL)isFlipped{
    return YES;
}

@end
