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
@synthesize flagImageView;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    
    NSURL *url = [NSURL URLWithString:@"http://api.wipmania.com/"];
    NSData  *data      = [NSData dataWithContentsOfURL: url];
    NSString *retStr = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    NSRange range = [retStr rangeOfString:@"<br>"];
    NSString *ipAddress = [retStr substringToIndex: range.location];
    NSString *location = [retStr substringFromIndex:range.location+range.length];
    
    [ipAddrText setStringValue: [[ipAddress stringByAppendingString:@"\n"] stringByAppendingString:location]];
    //[ll release];
    [retStr release];
    
    NSString *path = [[NSBundle mainBundle]pathForResource:location ofType:@"png"];
    
    NSLog(@"%@", path);
    flagImageView.image = [[NSImage alloc]initWithContentsOfFile: path];
    

}
- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender{
    return YES;
}
@end
