//
//  ETHClient.m
//  CPTest
//
//  Created by Marek Kotewicz on 15.03.2014.
//  Copyright (c) 2014 Marek Kotewicz. All rights reserved.
//

#import <ethereum/Client.h>
#import <ethereum/Defaults.h>
#import "ETHClient.h"

@interface ETHClient (){
    eth::Client *client;
    eth::KeyPair us;
    eth::Address coinbase;
}

@end

@implementation ETHClient

+ (instancetype)sharedInstance{
    static ETHClient *sharedInstance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[ETHClient alloc] init];
    });
    return sharedInstance;
}

- (instancetype)init{
    if (self = [super init]){
        eth::Defaults::get();
        us = eth::KeyPair::create();
        coinbase = us.address();
    
        client = new eth::Client("ethereum objective-c", coinbase, "");
    }
    return self;
}

- (void)startNetwork{
    unsigned short listenPort = 30303;
    std::string remoteHost;
    unsigned short remotePort = 30303;
    eth::NodeMode mode = eth::NodeMode::Full;
    unsigned peers = 5;
    std::string publicIP;
    bool upnp = true;
    
    client->startNetwork(listenPort, remoteHost, remotePort, mode, peers, publicIP, upnp);
}

- (void)stopNetwork{
    client->stopNetwork();
}

- (void)startMining{
    client->startMining();
}

- (void)stopMining{
    client->stopMining();
}

- (NSString*)balance{
    eth::u256 balance = client->state().balance(us.address());
    return [NSString stringWithFormat:@"%s", balance.str().c_str()];
}

- (NSString*)address{
    return [NSString stringWithFormat:@"%s", eth::toString(us.address()).c_str()];
}

- (NSString*)publicKey{
    return [NSString stringWithFormat:@"%s", eth::toString(us.pub()).c_str()];
}

- (NSString*)privateKey{
    return [NSString stringWithFormat:@"%s", eth::toString(us.sec()).c_str()];
}



@end









