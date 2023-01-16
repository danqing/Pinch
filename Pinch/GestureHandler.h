//
//  GestureHandler.h
//  Pinch
//
//  Created by Danqing Liu on 1/16/23.
//

@import CoreFoundation;
@import Foundation;

@interface GestureHandler: NSObject

+ (GestureHandler *) sharedInstance;
- (void)setTwoFingerPinch:(BOOL)enable;

@end
