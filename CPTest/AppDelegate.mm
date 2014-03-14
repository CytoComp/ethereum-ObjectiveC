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
#import <boost/multiprecision/cpp_int.hpp>
#import <secp256k1/secp256k1.h>

// ethereum
#import <ethereum/AddressState.h>
#import <ethereum/BlockChain.h>
#import <ethereum/BlockInfo.h>
#import <ethereum/Client.h>
#import <ethereum/Common.h>
#import <ethereum/Dagger.h>
#import <ethereum/Defaults.h>
#import <ethereum/Exceptions.h>
#import <ethereum/ExtVMFace.h>
#import <ethereum/ExtVMFace.h>
#import <ethereum/FeeStructure.h>
#import <ethereum/FileSystem.h>
#import <ethereum/Instruction.h>
#import <ethereum/MemTrie.h>
#import <ethereum/PeerNetwork.h>
#import <ethereum/RLP.h>
#import <ethereum/State.h>
#import <ethereum/Transaction.h>
#import <ethereum/TransactionQueue.h>
#import <ethereum/TrieCommon.h>
#import <ethereum/TrieDB.h>
#import <ethereum/TrieHash.h>
#import <ethereum/UPnP.h>
#import <ethereum/VM.h>
#import <ethereum/vector_ref.h>

@interface AppDelegate (){
    eth::Client *client;
    eth::KeyPair us;
    eth::Address coinbase;
}

@property (weak) IBOutlet NSTextField *balanceTitleLabel;
@property (weak) IBOutlet NSTextField *balanceValueLabel;
//@property (strong) NSOperationQueue *etherQueue;


@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    [self test];
}

- (void)test{

    eth::Defaults::get();
    us = eth::KeyPair::create();
    coinbase = us.address();
    
    
    unsigned short listenPort = 30303;
    std::string remoteHost;
    unsigned short remotePort = 30303;
    eth::NodeMode mode = eth::NodeMode::Full;
    unsigned peers = 5;
    std::string publicIP;
    bool upnp = true;
    
    
    client = new eth::Client("test ver", coinbase, "");

    client->startNetwork(listenPort, remoteHost, remotePort, mode, peers, publicIP, upnp);
    client->startMining();
    

    [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateDisplay:) userInfo:nil repeats:YES];
}

- (void)updateDisplay:(id)sender{
    eth::u256 balance = client->state().balance(us.address());
    self.balanceValueLabel.stringValue = [NSString stringWithFormat:@"%s", balance.str().c_str()];
}




@end
