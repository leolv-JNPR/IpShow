//
//  ipShowAppDelegate.h
//  ipShow
//
//  Created by Lv Yong on 12-2-4.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ipShowAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
    NSTextField *ipAddrText;
}
@property (assign) IBOutlet NSTextField *ipAddrText;

@property (assign) IBOutlet NSWindow *window;

@end
