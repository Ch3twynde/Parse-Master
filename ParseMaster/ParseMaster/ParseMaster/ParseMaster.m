//
//  ParseMaster.m
//  ParseMaster
//
//  Created by Miles Alden on 10/21/12.
//  Copyright (c) 2012 MilesAlden. All rights reserved.
//

#import "ParseMaster.h"
#import "OBJCReturnTypes.h"

@implementation ParseMaster



- (NSString *)parsePrimitive: (NSError *)error {
       
    // Error checking
    if ( ptr == NULL ) {
        if (error) {
            error = [NSError errorWithDomain:[[NSBundle mainBundle] bundleIdentifier]
                                        code:2
                                    userInfo: @{ NSLocalizedDescriptionKey : @"Pointer was NULL."} ];
            NSLog(@"-[%@ %@] ~ERROR~ %@", self, NSStringFromSelector(_cmd), error.localizedDescription);
            return nil;
        }
        NSLog(@"-[%@ %@] ~ERROR~ %@", self, NSStringFromSelector(_cmd), @"Pointer was NULL.");
        return nil;
    }
    
//    [self parsePrimitive:<#(void *)#> objCType:<#(const char *)#>]
    
    return nil;
    
}






- (void)setPtr:(void *)newPtr forType:(const char*)type length:(int)length{
    
    // Make sure we retain the pointer value.
    // When I did this using NSValue, the ptr would
    // lose its value by the time it returned. O_o
    self.ptrAsData = [NSData dataWithBytes:newPtr length:length];
    NSLog(@"-[%@ %@] %@", self, NSStringFromSelector(_cmd), self.ptrAsData);
    
}



- (NSData *)getPtr {
    
    return self.ptrAsData;
}


- (NSString *)stringWithPrimitiveType:(const char *)_argType pointerToData:(void*)arg {
    
    NSString *argType = [NSString stringWithUTF8String:_argType];
    NSNumberFormatter * f = [[NSNumberFormatter alloc] init];
    [f setNumberStyle:NSNumberFormatterDecimalStyle];
    NSNumber * number = @0;
    NSString * string = @"";
    
    if ( arg != NULL ) {
        
        if ( [argType isEqualToString:@"i"] ) {
            int *temp = (int*)arg;
            number = [NSNumber numberWithInt:*temp];

        } else if ( [argType isEqualToString:@"B"] ) {
            BOOL *temp = (BOOL*)arg;
            number = [NSNumber numberWithBool:*temp];
            
        } else if ( [argType isEqualToString:@"s"] ) {
            short *temp = (short*)arg;
            number = [NSNumber numberWithShort:*temp];
            
        } else if ( [argType isEqualToString:@"l"] ) {
            long *temp = (long*)arg;
            number = [NSNumber numberWithLong:*temp];
            
        } else if ( [argType isEqualToString:@"q"] ) {
            long long *temp = (long long*)arg;
            number = [NSNumber numberWithLongLong:*temp];

        
        } else if ( [argType isEqualToString:@"C"] ) {
            unsigned char *temp = (unsigned char*)arg;
            number = [NSNumber numberWithUnsignedChar:*temp];

        
        } else if ( [argType isEqualToString:@"I"] ) {
            unsigned int *temp = (unsigned int*)arg;
            number = [NSNumber numberWithUnsignedInt:*temp];

        
        } else if ( [argType isEqualToString:@"S"] ) {
            unsigned short *temp = (unsigned short*)arg;
            number = [NSNumber numberWithUnsignedShort:*temp];
            
            
        } else if ( [argType isEqualToString:@"L"] ) {
            unsigned long *temp = (unsigned long*)arg;
            number = [NSNumber numberWithUnsignedLong:*temp];
            
            
        } else if ( [argType isEqualToString:@"Q"] ) {
            unsigned long long *temp = (unsigned long long*)arg;
            number = [NSNumber numberWithUnsignedLongLong:*temp];

            
        } else if ( [argType isEqualToString:@"f"] ) {
            float *temp = (float *)arg;
            number = [NSNumber numberWithFloat:*temp];
            
            
        } else if ( [argType isEqualToString:@"d"] ) {
            double *temp = (double*)arg;
            number = [NSNumber numberWithDouble:*temp];
        }
        
        // Flip to string
        string = [number stringValue];
            
        
        // This one is handled slightly differently
        if ( [argType isEqualToString:@"*"] ) {
            char *temp = (char*)arg;
            string = [NSString stringWithCString:temp encoding:NSASCIIStringEncoding];
            
        } else if ( [argType isEqualToString:@"c"] ) {
            char *someChar = (char*)arg;
            
            // Most likely means this char
            // was actually a BOOL.
            //
            // Register values accordingly as
            // 1 & 0.
            if ( ((int)*someChar == 1) ) {
                *someChar = '1';
            } else if ( ((int)*someChar == 0) ) {
                *someChar = '0';
            }
            string = [NSString stringWithFormat:@"%c", *someChar];
        }

    }
    
    return string;
}

@end
