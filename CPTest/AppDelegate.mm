//
//  AppDelegate.m
//  CPTest
//
//  Created by Marek Kotewicz on 12.03.2014.
//  Copyright (c) 2014 Marek Kotewicz. All rights reserved.
//

#import "AppDelegate.h"
#import <md5.h>
#import <miniupnpc.h>
#import <filter_policy.h>
#import <gmp.h>

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    [self test];
}

- (void)test{
    CryptoPP::MD5 md5; //
    UPNPDev dev;
    leveldb::FilterPolicy *filter;
    __GMP_ABS(1);
}



@end
