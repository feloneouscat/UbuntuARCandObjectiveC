//
//  main.m
//  Just a little test case for Objective-C 2.0 on Ubuntu
//
//  Created by Tobias Lensing on 2/22/13.
//  More cool stuff available at blog.tlensing.org.
// 
#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>
#import <dispatch/dispatch.h> 

int main(int argc, const char * argv[])
{        
    @autoreleasepool 
    {
        int multiplier = 7;
        int (^myBlock)(int) = ^(int num) 
        {
            return num * multiplier;
        };

        NSLog(@"%d", myBlock(3));
        dispatch_queue_t queue = dispatch_queue_create(NULL, NULL);

        dispatch_sync(queue, ^{
            printf("Hello, world from a dispatch queue!\n");
        });

//         dispatch_release(queue);
    }     

    @autoreleasepool 
    {
        [NSApplication sharedApplication];
#if 1
        NSRunAlertPanel(@"Test", @"Wow it works!", @"OK", nil, nil);
#else
	NSRect frame = NSMakeRect(0,0,500,500);
	NSWindow *window = [[NSWindow alloc] initWithContentRect: frame
					      styleMask: NSTitledWindowMask
			backing: NSBackingStoreBuffered
			defer: NO];
	[window setBackgroundColor: [NSColor blueColor]];
	[window makeKeyAndOrderFront: NSApp];
#endif
	[NSApp run];
    }

    return 0;
}
