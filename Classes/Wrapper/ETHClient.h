//
//  ETHClient.h
//  CPTest
//
//  Created by Marek Kotewicz on 15.03.2014.
//  Copyright (c) 2014 Marek Kotewicz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ETHClient : NSObject

+ (instancetype)sharedInstance;

- (void)startNetwork;

- (void)stopNetwork;

- (void)startMining;

- (void)stopMining;

- (NSString*)balance;

- (NSString*)address;

- (NSString*)publicKey;

- (NSString*)privateKey;

@end
