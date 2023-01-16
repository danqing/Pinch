//
//  MTTGestureBackEnd.m
//  Pinch
//
//  Created by Danqing Liu on 1/16/23.
//

#import "MTTGestureBackEnd.h"
#import "GestureHandler.h"

@implementation GestureHandler

static GestureHandler *_handler = nil;
static MTTGestureBackEnd *_backend = nil;

+ (GestureHandler *) sharedInstance {
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        NSBundle *bundle = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/PreferencePanesSupport.framework"];
        
        if (![bundle load]) {
            NSLog(@"Failed to load framework");
        } else {
            _backend = [NSClassFromString(@"MTTGestureBackEnd") valueForKey:@"sharedInstance"];
            _handler = [[GestureHandler alloc] init];
        }
    });
    return _handler;
}

- (void)setTwoFingerPinch:(BOOL)enable {
    [_backend setTwoFingerPinch: enable];
}

@end
