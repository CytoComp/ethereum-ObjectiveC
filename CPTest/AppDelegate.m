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
@property (weak) IBOutlet NSButton *connectButton;
@property (weak) IBOutlet NSButton *mineButton;

@property (assign) BOOL connected;
@property (assign) BOOL mining;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    ETHClient *client = [ETHClient sharedInstance];
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
    
    [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateDisplay:) userInfo:nil repeats:YES];
}

- (void)updateDisplay:(id)sender{
    ETHClient *client = [ETHClient sharedInstance];
    self.balanceValueLabel.stringValue = [client balance];
}

- (IBAction)connectButtonPressed:(NSButton*)sender {
    ETHClient *client = [ETHClient sharedInstance];
    !self.connected ? [client startNetwork] : [client stopNetwork];
    self.connected = !self.connected;
}

- (IBAction)mineButtonPressed:(id)sender {
    ETHClient *client = [ETHClient sharedInstance];
    !self.mining ? [client startMining] : [client stopMining];
    self.mining = !self.mining;
}




@end
