//
//  ipShowAppDelegate.m
//  ipShow
//
//  Created by Lv Yong on 12-2-4.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "ipShowAppDelegate.h"

@implementation ipShowAppDelegate

@synthesize ipAddrText;
@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    
    NSURL *url = [NSURL URLWithString:@"http://whatismyip.org/"];
    NSData  *data      = [NSData dataWithContentsOfURL: url];
    NSString *retStr = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    [ipAddrText setStringValue: retStr];
    
    [retStr release];

}

@end
