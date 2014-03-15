//
//  AppDelegate.m
//  CPTest
//
//  Created by Marek Kotewicz on 12.03.2014.
//  Copyright (c) 2014 Marek Kotewicz. All rights reserved.
//

#import "AppDelegate.h"
#import <ITSidebar.h>
#import "ETHClient.h"

@interface AppDelegate ()

@property (weak) IBOutlet ITSidebar *sidebar;

@property (weak) IBOutlet NSTextField *addressValueLabel;
@property (weak) IBOutlet NSTextField *balanceValueLabel;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    ETHClient *client = [ETHClient sharedInstance];
//    [client startNetwork];
    self.addressValueLabel.stringValue = [client address];

    self.sidebar.allowsEmptySelection = NO;

    [self.sidebar addItemWithImage:[NSImage imageNamed:@"guest-gray"]
                    alternateImage:[NSImage imageNamed:@"guest-white"]];
    [self.sidebar addItemWithImage:[NSImage imageNamed:@"reuse-gray"]
                    alternateImage:[NSImage imageNamed:@"reuse-white"]];
    [self.sidebar addItemWithImage:[NSImage imageNamed:@"key-3-gray"]
                    alternateImage:[NSImage imageNamed:@"key-3-white"]];
    [self.sidebar addItemWithImage:[NSImage imageNamed:@"cash-receiving-gray"]
                    alternateImage:[NSImage imageNamed:@"cash-receiving-white"]];
    [self.sidebar addItemWithImage:[NSImage imageNamed:@"settings-5-gray"]
                    alternateImage:[NSImage imageNamed:@"settings-5-white"]];
    [self.sidebar addItemWithImage:[NSImage imageNamed:@"help-gray"]
                    alternateImage:[NSImage imageNamed:@"help-white"]];
    
}




@end
