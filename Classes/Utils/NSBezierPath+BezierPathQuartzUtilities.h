//
//  NSBezierPath+BezierPathQuartzUtilities.h
//  CPTest
//
//  Created by Marek Kotewicz on 15.03.2014.
//  Copyright (c) 2014 Marek Kotewicz. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface NSBezierPath (BezierPathQuartzUtilities)

- (CGPathRef)quartzPath;

@end
